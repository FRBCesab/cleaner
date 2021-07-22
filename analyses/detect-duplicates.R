## Folder containing BiBTeX files ----

bib_path <- here::here("data")


## List BiBTeX files ----

bib_files <- list.files(path = bib_path, pattern = "\\.bib$")


## Read BiBTeX files ----

refs <- revtools::read_bibliography(here::here(bib_path, bib_files))


## Detect duplicates (EXACT MATCH ON TITLE) ----

refs_id_1 <- revtools::find_duplicates(data               = refs, 
                                       match_variable     = "title", 
                                       match_function     = "exact",
                                       to_lower           = TRUE, 
                                       remove_punctuation = TRUE)


## Detect duplicates (SIMILAR TITLE - NOT EXACT) ----

refs_id_2 <- revtools::find_duplicates(data               = refs, 
                                       match_variable     = "title", 
                                       match_function     = "stringdist",
                                       method             = "lv", 
                                       threshold          = 5,
                                       to_lower           = TRUE, 
                                       remove_punctuation = TRUE)


## Add identifier to data frame ----

refs$"similar_title" <- refs_id_2


## Export references with ID ----

writexl::write_xlsx(refs, here::here("outputs", 
                                     "references_with_duplicates.xlsx"))
