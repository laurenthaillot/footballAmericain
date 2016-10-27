package co.simplon.prairie;

import jodd.madvoc.meta.Action;
import jodd.madvoc.meta.MadvocAction;
import jodd.madvoc.meta.Out;

import java.util.List;

@MadvocAction
public class IndexAction {

    @Out
    String prenom;


    @Action("/")
    public String view() {
        prenom = "Laurent";
        return "/index";

    }

      @Action("/laurent")
    public String view2() {
        prenom = "Pour voir la difference";
        return "/index";

    }

@Action("/laurenceetstephane")
    public String view3() {
        prenom = "Je suis entre Laurence et Stephane";
        return "/index";

    }

}
