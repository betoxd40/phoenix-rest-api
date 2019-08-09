alias PhoenixApi.Repo
alias PhoenixApi.Directory.Business

Repo.insert! %Business{name: "Company 1", description: "Short description ...", tag: "IT, Software"}
Repo.insert! %Business{name: "Company 2", description: "Short description ...", tag: "Marketing"}
Repo.insert! %Business{name: "Company 3", description: "Short description ...", tag: "Accounting"}
