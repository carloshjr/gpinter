tabPanel("Input data",
    fixedPage(
        fixedRow(
            column(7,
                hidden(tags$div(
                    tags$h4(tags$i(class = "fa fa-cog"), HTML(" &nbsp; "), tags$span("", id = "import_progress_message"),
                        style = "text-align: center; margin-top: 10px; margin-bottom: 20px;"
                    ),
                    tags$div(
                        tags$div(
                            id = "import_progress",
                            role = "progressbar",
                            `aria-valuenow` = "0",
                            `aria-valuemin` = "0",
                            `aria-valuemax` = "100",
                            style = "width: 0%;",
                            class = "progress-bar progress-bar-striped"
                        ),
                        class = "progress"
                    ),
                    id = "panel_import_progress"
                )),
                tags$div(
                    tags$div(
                        tags$p("This interface allows you interpolate the full distribution
                            of income or wealth on the basis of simple tabulated data files
                            (such as those provided by tax administrations and statistical
                            institutes) and", actionLink("go_to_help", "generalized Pareto interpolation methods.")),
                        tags$p("To import the tabulation files, use the “Browse” button and
                            choose one or more files from your computer (in CSV or Excel format).
                            You must have one CSV file or one Excel sheet per tabulation.
                            Each must take the form of a table with the following format:"),
                        tabsetPanel(
                            tabPanel("File #1",
                                tags$table(
                                    tags$tr(
                                        tags$th("year"), tags$th("country"), tags$th("component"), tags$th("popsize"),
                                        tags$th("average"), tags$th("p"), tags$th("thr"), tags$th("bracketavg")
                                    ),
                                    tags$tr(
                                        tags$td("2010"), tags$td("US 1"), tags$td("labor"), tags$td("225 700 000"),
                                        tags$td("37 208"), tags$td("0.1"), tags$td("4 130"), tags$td("12 643")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.5"), tags$td("23 686"), tags$td("43 908")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.9"), tags$td("76 252"), tags$td("108 329")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.99"), tags$td("211 861"), tags$td("471 463")
                                    ),
                                    class = "table table-bordered table-condensed example-preview",
                                    style = "margin-bottom: 2px;"
                                )
                            ),
                            tabPanel("File #2",
                                tags$table(
                                    tags$tr(
                                        tags$th("year"), tags$th("country"), tags$th("component"), tags$th("popsize"),
                                        tags$th("average"), tags$th("p"), tags$th("thr"), tags$th("bracketavg")
                                    ),
                                    tags$tr(
                                        tags$td("2010"), tags$td("US 1"), tags$td("capital"), tags$td("225 700 000"),
                                        tags$td("16 370"), tags$td("0.1"), tags$td("-1 176"), tags$td("328")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.5"), tags$td("2 780"), tags$td("10 657")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.9"), tags$td("28 939"), tags$td("59 412")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.99"), tags$td("173 917"), tags$td("688 689")
                                    ),
                                    class = "table table-bordered table-condensed example-preview",
                                    style = "margin-bottom: 2px;"
                                )
                            ),
                            tabPanel("File #3",
                                tags$table(
                                    tags$tr(
                                        tags$th("year"), tags$th("country"), tags$th("component"), tags$th("popsize"),
                                        tags$th("average"), tags$th("p"), tags$th("thr"), tags$th("bracketavg")
                                    ),
                                    tags$tr(
                                        tags$td("2010"), tags$td("US 2"), tags$td("total"), tags$td("225 700 000"),
                                        tags$td("53 587"), tags$td("0.1"), tags$td("5 665"), tags$td("18 030")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.5"), tags$td("31 829"), tags$td("54 936")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.9"), tags$td("96 480"), tags$td("151 099")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.99"), tags$td("351 366"), tags$td("1 068 911")
                                    ),
                                    class = "table table-bordered table-condensed example-preview",
                                    style = "margin-bottom: 2px;"
                                )
                            ),
                            tabPanel("File #4",
                                tags$table(
                                    tags$tr(
                                        tags$th("year"), tags$th("country"), tags$th("component"), tags$th("popsize"),
                                        tags$th("average"), tags$th("p"), tags$th("thr"), tags$th("bracketavg"), tags$th("s")
                                    ),
                                    tags$tr(
                                        tags$td("2010"), tags$td("FR"), tags$td("total"), tags$td("36 962 517"),
                                        tags$td("27 094"), tags$td("0"), tags$td("0"), tags$td("5 263"), tags$td("0.872")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.26"), tags$td("11 416"), tags$td("12 575"), tags$td("0.872")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.33"), tags$td("13 699"), tags$td("15 519"), tags$td("0.872")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.43"), tags$td("17 123"), tags$td("19 784"), tags$td("0.756")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.59"), tags$td("22 831"), tags$td("28 079"), tags$td("0.557")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.76"), tags$td("34 247"), tags$td("43 436"), tags$td("0.261")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.92"), tags$td("57 078"), tags$td("74 824"), tags$td("0.150")
                                    ),
                                    tags$tr(
                                        tags$td(""), tags$td(""), tags$td(""), tags$td(""), tags$td(""),
                                        tags$td("0.98"), tags$td("114 155"), tags$td("221 089"), tags$td("0.150")
                                    ),
                                    class = "table table-bordered table-condensed example-preview",
                                    style = "margin-bottom: 2px;"
                                )
                            ),
                            id = "example_tabs",
                            type = "pills"
                        ),
                        tags$p("Download these sample files as", tags$a(icon("download"), "CSV", href="sample.zip"),
                            "/", tags$a(icon("download"), "Excel", href="sample.xlsx"), "or",
                            actionLink("import_example", "import it directly to the interface.", icon("arrow-down")),
                            style="text-align: right; font-size: small;"),
                        tags$p("Each column of the table correspond to a variable. You need to at least specify:",
                            tags$ul(
                                tags$li(tags$code("p"), "for fractiles between 0 and 1 (in ascending order: p = 0.01 corresponds to the bottom 1% and p = 0.99 to te top 1%)"),
                                tags$li(tags$code("thr"), "for matching quantiles (income or wealth thresholds corresponding to the fractiles)"),
                                tags$li(tags$code("average"), "for the overall average")
                            )
                        ),
                        tags$p("You must also specify one of the following:",
                            tags$ul(
                                tags$li(tags$code("bracketsh"), "for the share of the bracket"),
                                tags$li(tags$code("topsh"), "for the top share"),
                                tags$li(tags$code("bracketavg"), "for the average in the bracket"),
                                tags$li(tags$code("topavg"), "for the top average"),
                                tags$li(tags$code("b"), "for the inverted Pareto coefficient")
                            )
                        ),
                        tags$p("Finally, if you have several tabulations, you will need to identify them
                            using at least one of the following fields:",
                            tags$ul(
                                tags$li(tags$code("year"), "for the period covered by the tabulation"),
                                tags$li(tags$code("country"), "for the country or region"),
                                tags$li(tags$code("component"), "for the component (for example labor or capital income)")
                            )
                        ),
                        tags$p("Finally with the individualize and add-up options you can also specify the following fields:",
                            tags$ul(
                                tags$li(tags$code("s"), "share of singles in the bracket"),
                                tags$li(tags$code("gumbel"), "(= 3 or other selected global value if not specified)")
                            )
                        ),
                        class = "panel-body"
                    ),
                    class = "panel panel-default",
                    style = "box-shadow: none; border-style: dashed; color: #666;",
                    id = "help_intro"
                ),
                uiOutput("input_data_view_header"),
                uiOutput("input_data_view")
            ),
            column(5,
                tags$div(
                    tags$div(
                        tags$h3(icon("files-o"), HTML("&nbsp;"), "Import file(s)", class="panel-title"),
                        class = "panel-heading"
                    ),
                    tags$div(
                        tags$p("Supports CSV and Excel formats."),
                        fileInput("file_input",
                            width = "100%",
                            label = NULL,
                            multiple = TRUE,
                            accept = c(
                                'text/csv',
                                'text/comma-separated-values',
                                'text/tab-separated-values',
                                'text/plain',
                                'application/vnd.ms-excel',
                                'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                                '.txt',
                                '.csv',
                                '.tsv',
                                '.xls',
                                '.xlsx'
                            )
                        ),
                        class = "panel-body",
                        id = "panel_file_input"
                    ),
                    class = "panel panel-default"
                ),
                tags$div(
                    tags$div(
                        tags$h3(icon("cogs"), HTML("&nbsp;"), "Interpolation options", class="panel-title"),
                        class = "panel-heading"
                    ),
                    tags$div(
                        withMathJax(radioButtons("interpolation_options", NULL, width="100%",
                            choiceValues = c("basic", "individualize", "merge", "addup"),
                            choiceNames = list(
                                tagList(
                                    tags$h4("Generalized Pareto interpolation", style="margin-top: 0;"),
                                    tags$p("Interpolate the distribution of your data directly,
                                        without any transformation.", style="font-size: small; color: #666;")
                                ),
                                tagList(
                                    tags$h4("Interpolate and individualize", style="margin-top: 0;"),
                                    tags$p("Individualize the distribution of income or wealth
                                        under the assumption of equal sharing among spouses. If you select this
                                        option, you must specify the share of singles in your input files.",
                                        style="font-size: small; color: #666;")
                                ),
                                tagList(
                                    tags$h4("Interpolate and merge countries", style="margin-top: 0;"),
                                    tags$p("Merge the distribution of several countries into a single one.
                                        If you select this option, you must specify the population size
                                        of each country.",
                                        style="font-size: small; color: #666;")
                                ),
                                tagList(
                                    tags$h4("Interpolate and add up components", style="margin-top: 0;"),
                                    tags$p("Add up two components of income or wealth (for example, labor and
                                        capital income, housing wealth and financial wealth, male earnings and
                                        female earnings, etc.), assuming that the dependence between both
                                        components is characterized by a Gumbel copula with parameter
                                        \\(\\theta\\). The higher \\(\\theta\\), the stronger the dependence,
                                        with \\(\\theta = 1\\) meaning full independence, and
                                        \\(\\theta = +\\infty\\) meaning perfect correlation of the ranks.
                                        You may specify a value for \\(\\theta\\) in each files,
                                        or set a global value below (the default value \\(\\theta = 1.5\\)
                                        corresponds to the typical dependance between labor and capital income).",
                                        style="font-size: small; color: #666;")
                                )
                            )
                        )),
                        tags$div(
                            numericInput("gumbel_param", "Gumbel copula parameter \\(\\theta\\)", value=1.5, min=1, width="100%"),
                            style = "margin-left: 20px;"
                        ),
                        tags$hr(),
                        checkboxInput("fast_interpolation",
                            tagList(
                                    tags$h4("Use fast interpolation (less precise)", style="margin-top: 0;"),
                                    tags$p("Use a faster, but less precise interpolation method. Useful if
                                        you have very precise tabulations in input, for example because
                                        you are using the output from a previous interpolation. In such
                                        cases the interpolation will be faster with little consequences
                                        on the results.",
                                        style="font-size: small; color: #666;")
                                ),
                            FALSE,
                            width = "100%"
                        ),
                        tags$hr(),
                        checkboxInput("transform_data",
                            tagList(
                                tags$h4("Transform the data", style="margin-top: 0;"),
                                tags$p("Also calculate the following transformation of the data: \\(Y \\propto X^\\varepsilon\\)",
                                    style="font-size: small; color: #666;")
                            ),
                            FALSE,
                            width = "100%"
                        ),
                        tags$div(
                            numericInput("transform_avg", "Average of transformed data", value=100, width="100%"),
                            style = "margin-left: 20px;"
                        ),
                        tags$div(
                            numericInput("transform_elasticity", "Elasticity \\(\\varepsilon\\)", value=0.5, min=0.0001, width="100%"),
                            style = "margin-left: 20px;"
                        ),
                        tags$div(
                            numericInput("transform_min", "Minimum of transformed data", value=10, min=0, width="100%"),
                            style = "margin-left: 20px;"
                        ),
                        class = "panel-body"
                    ),
                    class = "panel panel-default"
                )
            )
        )
    ),
    icon = icon("arrow-down")
)
