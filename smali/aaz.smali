.class public Laaz;
.super Ljava/lang/Object;
.source "DialSettingUtil.java"


# direct methods
.method public static a(Z)V
    .locals 2
    .param p0, "isShow"    # Z

    .prologue
    .line 18
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Z)V

    .line 20
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ladh;->a(Z)V

    .line 22
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ladh;->c(I)Z

    .line 23
    return-void
.end method

.method public static a(ZZ)V
    .locals 2
    .param p0, "isShow"    # Z
    .param p1, "isBroadcast"    # Z

    .prologue
    .line 41
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Z)V

    .line 42
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 44
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ladh;->a(Z)V

    .line 46
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ladh;->c(I)Z

    .line 48
    return-void
.end method

.method public static b(Z)V
    .locals 2
    .param p0, "isBroadcast"    # Z

    .prologue
    .line 29
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Z)V

    .line 31
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ladh;->a(Z)V

    .line 33
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ladh;->c(I)Z

    .line 34
    return-void
.end method
