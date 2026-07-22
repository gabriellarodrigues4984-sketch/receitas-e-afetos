-- Rode este script inteiro no SQL Editor do seu projeto Supabase
-- (Supabase > seu projeto > SQL Editor > New query > colar > Run)

create table if not exists app_data (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

-- Ativa Row Level Security (obrigatório no Supabase)
alter table app_data enable row level security;

-- Como este é um app pessoal (sem tela de login), liberamos leitura e escrita
-- para quem tiver a "chave anon" do projeto (a mesma que você vai colar no index.html).
-- Importante: qualquer pessoa com essa chave e a URL do projeto consegue ler/editar
-- esses dados. Não compartilhe a URL do site nem a chave publicamente se quiser
-- manter suas receitas e preços privados. Se um dia quiser um login de verdade
-- (Supabase Auth), me avise que eu adapto essas políticas.

create policy "Permitir leitura" on app_data
  for select using (true);

create policy "Permitir escrita" on app_data
  for insert with check (true);

create policy "Permitir atualização" on app_data
  for update using (true);
