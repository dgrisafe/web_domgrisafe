library(htmltools)

# thumbnail images for multiple posts on home page
thumbnail <- function(title, img, href, class = "col-sm-6", caption = TRUE, width = NULL) {
  div(class = class,
      a(class = "thumbnail", title = title, href = href,
        img(src = img, width = width),
        div(class = if (caption) "caption",
            if (caption) title)
      )
  )
}

# post image, usually in footer of post
post_image <- function(img_path, class = "col-sm-6"){
  p(style = "clear:both;")
  div(class = class, style="text-align: center;",
      hr(),
      htmltools::img(src = img_path, width="50%"),
      hr()
  )
}
