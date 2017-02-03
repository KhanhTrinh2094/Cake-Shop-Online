package admin;

import entities.FeedBack;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import session.FeedBackFacade;

@ManagedBean(name = "feedbackADMB")
@RequestScoped
public class FeedbackMB {

    @EJB
    private FeedBackFacade feedBackFacade;
    private FeedBack feedback;
    
    public FeedbackMB() {
        if(feedback == null){
            feedback = new FeedBack();
        }
    }
    
    public List<FeedBack> getList(){
        return feedBackFacade.findAll();
    }
    
    public String getDetail(int id){
        feedback = feedBackFacade.find(id);
        if(feedback != null){
            return "DetailFeedback";
        }
        return "";
    }

    public FeedBack getFeedback() {
        return feedback;
    }

    public void setFeedback(FeedBack feedback) {
        this.feedback = feedback;
    }
    
    public String delete(int id){
        feedback = feedBackFacade.find(id);
        if(feedback != null){
            feedBackFacade.remove(feedback);
            return "";
        }
        return "";
    }

}
