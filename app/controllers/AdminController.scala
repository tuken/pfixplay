package controllers

import com.google.inject.Inject
import play.api.db.slick.DatabaseConfigProvider
import play.api._
import play.api.mvc._
import slick.driver.JdbcProfile
import models.Tables._
import scala.concurrent.ExecutionContext.Implicits.global
import slick.driver.MySQLDriver.api._

/**
  * Created by t.ikawa on 2016/06/02.
  */
class AdminController @Inject()(dbConfigProvider: DatabaseConfigProvider) extends Controller {
  val dbConfig = dbConfigProvider.get[JdbcProfile]

  def index() = Action.async { implicit request =>
    val query = Admin.map(_.username)
    val resultingAdmin = dbConfig.db.run(query.result)
    resultingAdmin.map(user => Ok(views.html.index(user.toString)))
  }
}
