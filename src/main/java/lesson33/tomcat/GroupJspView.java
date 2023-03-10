package lesson33.tomcat;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.QueryParam;
import jakarta.ws.rs.core.MediaType;
import lesson07.xml.json.Group;
import org.glassfish.jersey.server.mvc.Viewable;

/**
 * @author spasko
 */

@Path("/")
public class GroupJspView {
    private Group group = Group.groupExampleCreator();

    @GET
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @Produces(MediaType.TEXT_HTML)
    public Viewable index(@QueryParam("groupId") String groupId) {

        if (groupId != null && groupId.equals("" + group.getId())) {
            return new Viewable("/index", group);
        }
        return new Viewable("/index");
    }
}
