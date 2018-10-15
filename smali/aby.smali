.class public Laby;
.super Ljava/lang/Object;
.source "DialResultHandlerFactory.java"


# direct methods
.method public static a(Ljava/lang/String;Lacp;)Lacj;
    .locals 1
    .param p0, "pFocusType"    # Ljava/lang/String;
    .param p1, "businessHandler"    # Lacp;

    .prologue
    .line 18
    const-string/jumbo v0, "telephone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Laco;

    invoke-direct {v0, p1}, Laco;-><init>(Lacp;)V

    .line 26
    :goto_0
    return-object v0

    .line 20
    :cond_0
    const-string/jumbo v0, "message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Lacn;

    invoke-direct {v0, p1}, Lacn;-><init>(Lacp;)V

    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v0, "contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Lack;

    invoke-direct {v0, p1}, Lack;-><init>(Lacp;)V

    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
