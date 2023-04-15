library(htmltools)

thumbnail <- function(title, img, href, class = "col-sm-6", caption = TRUE, width = NULL) {
  div(class = class,
      a(class = "thumbnail", title = title, href = href,
        img(src = img, width = width),
        div(class = if (caption) "caption",
            if (caption) title)
      )
  )
}
