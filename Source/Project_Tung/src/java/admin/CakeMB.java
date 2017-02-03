package admin;

import library.JsfUtil;
import entities.Cakes;
import entities.Events;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.model.SelectItem;
import javax.faces.validator.ValidatorException;
import javax.servlet.http.Part;
import managed.SessionMB;
import session.CakesFacade;
import session.EventsFacade;

@ManagedBean(name = "cakeADMB")
@SessionScoped
public class CakeMB {

    @EJB
    private EventsFacade eventsFacade;
    @EJB
    private CakesFacade cakesFacade;
    private Cakes cakes;
    private Part file;

    public CakeMB() {
        if (cakes == null) {
            cakes = new Cakes();
        }
    }

    public Cakes getCakes() {
        return cakes;
    }

    public void setCakes(Cakes cakes) {
        this.cakes = cakes;
    }

    public List<Cakes> getList() {
        return cakesFacade.findAll();
    }

    public Part getFile() {
        return file;
    }

    public void setFile(Part file) {
        this.file = file;
    }

    public SelectItem[] getEventItems() {
        return JsfUtil.getSelectItems(eventsFacade.findAll(), true);
    }

    public String preUpdate(int id) {
        cakes = cakesFacade.find(id);
        if (cakes != null) {
            return "EditCake";
        }
        return "";
    }

    public String detail(int id) {
        cakes = cakesFacade.find(id);
        if (cakes != null) {
            return "DetailCake";
        }
        return "";
    }

    public String update() {

        if (cakes != null && cakesFacade.find(cakes.getCakeID()) != null) {
            if (file != null) {
                String uploadRootPath = SessionMB.getRequest().getServletContext().getRealPath("resource/upload");
                File uploadRootDir = new File(uploadRootPath);
                if (!uploadRootDir.exists()) {
                    uploadRootDir.mkdirs();
                }
                File serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + file.getSubmittedFileName());
                try {
                    InputStream is;
                    OutputStream os;
                    is = file.getInputStream();
                    os = new FileOutputStream(serverFile);
                    byte[] buffer = new byte[1024];
                    int length;
                    while ((length = is.read(buffer)) > 0) {
                        os.write(buffer, 0, length);
                    }
                    is.close();
                    os.close();
                } catch (IOException e) {
                }
                cakes.setCakeImage(file.getSubmittedFileName());
            }
            cakesFacade.edit(cakes);
            cakes = new Cakes();
            return "CakeManager";
        }
        return "";
    }

    public String delete(int id) {
        cakes = cakesFacade.find(id);
        if (cakes != null) {
            cakesFacade.remove(cakes);
            cakes = new Cakes();
            return "";
        }
        return "";
    }

    public String create() {
        String uploadRootPath = SessionMB.getRequest().getServletContext().getRealPath("resource/upload");
        File uploadRootDir = new File(uploadRootPath);
        if (!uploadRootDir.exists()) {
            uploadRootDir.mkdirs();
        }
        File serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + file.getSubmittedFileName());
        try {
            InputStream is;
            OutputStream os;
            is = file.getInputStream();
            os = new FileOutputStream(serverFile);
            byte[] buffer = new byte[1024];
            int length;
            while ((length = is.read(buffer)) > 0) {
                os.write(buffer, 0, length);
            }
            is.close();
            os.close();
        } catch (IOException e) {
        }
        cakes.setCakeImage(file.getSubmittedFileName());
        cakes.setStatus(new Short("1"));
        if (cakes != null) {
            cakesFacade.create(cakes);
            cakes = new Cakes();
            return "CakeManager";
        }
        return "";
    }

    public void validateFile(FacesContext ctx, UIComponent comp, Object value) {
        Part fileValid = (Part) value;
        if (fileValid != null) {
            List<FacesMessage> msgs = new ArrayList<>();
            if (!"image/png".equals(fileValid.getContentType()) && !"image/jpeg".equals(fileValid.getContentType()) && !"image/gif".equals(fileValid.getContentType())) {
                msgs.add(new FacesMessage("Please select image type"));
            }
            if (!msgs.isEmpty()) {
                throw new ValidatorException(msgs);
            }
        }
    }

    public Events getEventConverter(int id) {
        return eventsFacade.find(id);
    }
}
