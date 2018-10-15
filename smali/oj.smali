.class public Loj;
.super Ljava/lang/Object;
.source "NotificationFactory.java"


# direct methods
.method public static a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # I
    .param p2, "clickIntent"    # Landroid/content/Intent;
    .param p3, "deleteIntent"    # Landroid/content/Intent;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 19
    invoke-static/range {p0 .. p5}, Loi;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    invoke-static/range {p0 .. p5}, Loi;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/app/Notification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # I
    .param p2, "clickIntent"    # Landroid/content/Intent;
    .param p3, "deleteIntent"    # Landroid/content/Intent;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "curBytes"    # J
    .param p8, "totalBytes"    # J

    .prologue
    .line 29
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 30
    invoke-static/range {p0 .. p9}, Loi;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/app/Notification;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-static/range {p0 .. p9}, Loi;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method
