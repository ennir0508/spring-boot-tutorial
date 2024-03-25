# 2024/03 時点 最新版イメージ 16.2
FROM postgres:16.2

# 日本語ロケール
ARG DB_LANG=ja_JP
RUN localedef -i $DB_LANG -c -f UTF-8 -A /usr/share/locale/locale.alias $DB_LANG.UTF-8
ENV LANG $DB_LANG.utf8
