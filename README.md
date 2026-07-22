# Caderno de Receitas & Afeto

App pessoal de receitas, estoque de ingredientes e pesquisa de preços, com banco de dados no Supabase.

## 1. Banco de dados (Supabase)

1. Crie uma conta grátis em https://supabase.com e clique em **New project**.
2. Depois que o projeto for criado, vá em **SQL Editor** (menu lateral) > **New query**.
3. Cole todo o conteúdo do arquivo `supabase-schema.sql` deste repositório e clique em **Run**.
4. Vá em **Project Settings** (ícone de engrenagem) > **API**.
5. Copie a **Project URL** e a chave **anon public**.
6. Abra o arquivo `index.html`, procure por:
   ```js
   const SUPABASE_URL = "COLE_AQUI_A_URL_DO_SEU_PROJETO_SUPABASE";
   const SUPABASE_ANON_KEY = "COLE_AQUI_A_CHAVE_ANON_PUBLIC";
   ```
   e cole os valores copiados.

## 2. Subir o código no GitHub

No terminal, dentro desta pasta:

```bash
git init
git add .
git commit -m "Primeira versão do Caderno de Receitas & Afeto"
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/NOME-DO-REPOSITORIO.git
git push -u origin main
```

(Crie o repositório vazio antes em https://github.com/new — sem README, sem .gitignore, sem licença, para não dar conflito.)

## 3. Publicar no Vercel

1. Acesse https://vercel.com e entre com sua conta do GitHub.
2. Clique em **Add New > Project**.
3. Selecione o repositório que você acabou de subir.
4. Não precisa mudar nenhuma configuração (é um site estático) — clique em **Deploy**.
5. Em alguns segundos você recebe um link tipo `nome-do-repositorio.vercel.app`.

Depois disso, toda vez que você der `git push`, o Vercel atualiza o site sozinho.

## Aviso sobre privacidade

Este app não tem tela de login: qualquer pessoa com o link do site e acesso ao
código consegue ler/escrever os dados salvos no Supabase, porque a chave "anon"
fica visível no `index.html`. Para uso pessoal isso costuma ser suficiente, mas
não é seguro para dados sensíveis. Se quiser adicionar um login (Supabase Auth),
é só pedir.
