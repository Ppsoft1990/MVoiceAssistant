.class public Labc;
.super Ljava/lang/Object;
.source "TelSmsClientUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "commandWord"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v0, "\u7b2c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4e2a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "10"

    const-string/jumbo v1, "\u5341"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 35
    const-string/jumbo v0, "11"

    const-string/jumbo v1, "\u5341\u4e00"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 36
    const-string/jumbo v0, "12"

    const-string/jumbo v1, "\u5341\u4e8c"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 37
    const-string/jumbo v0, "13"

    const-string/jumbo v1, "\u5341\u4e09"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 38
    const-string/jumbo v0, "14"

    const-string/jumbo v1, "\u5341\u56db"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 39
    const-string/jumbo v0, "15"

    const-string/jumbo v1, "\u5341\u4e94"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 40
    const-string/jumbo v0, "16"

    const-string/jumbo v1, "\u5341\u516d"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 41
    const-string/jumbo v0, "17"

    const-string/jumbo v1, "\u5341\u4e03"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 42
    const-string/jumbo v0, "18"

    const-string/jumbo v1, "\u5341\u516b"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 43
    const-string/jumbo v0, "19"

    const-string/jumbo v1, "\u5341\u4e5d"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 44
    const-string/jumbo v0, "20"

    const-string/jumbo v1, "\u4e8c\u5341"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 47
    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Laau;)Z
    .locals 2
    .param p0, "result"    # Laau;

    .prologue
    .line 18
    invoke-virtual {p0}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "query"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Laau;->getRawText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u65b0\u5efa\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
