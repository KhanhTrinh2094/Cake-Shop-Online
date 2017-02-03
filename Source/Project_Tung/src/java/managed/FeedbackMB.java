package managed;

import entities.FeedBack;
import java.util.Calendar;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import session.CustomersFacade;
import session.FeedBackFacade;

@ManagedBean
@RequestScoped
public class FeedbackMB {

    @EJB
    private CustomersFacade customersFacade;
    @EJB
    private FeedBackFacade feedBackFacade;
    private FeedBack feedback;

    public FeedbackMB() {
        if (feedback == null) {
            feedback = new FeedBack();
        }
    }

    public FeedBack getFeedback() {
        return feedback;
    }

    public void setFeedback(FeedBack feedback) {
        this.feedback = feedback;
    }

    public String send() {
        if (feedback.getDetail() != null) {
            feedback.setUsername(customersFacade.find(SessionMB.getSession().getAttribute("username").toString()));
            feedback.setReply("0");
            feedback.setDate(Calendar.getInstance().getTime());
            feedback.setStatus(new Short("1"));
            feedBackFacade.create(feedback);
            SessionMB.getRequest().setAttribute("success", "Send Feedback successfull. Thank you !");
            feedback = new FeedBack();
            return "";
        }
        return "";
    }

}
