.class final Lauthcommon/o;
.super Ljava/lang/Object;
.source "BusinessThread.java"

# interfaces
.implements Lauthcommon/ae$a;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lauthcommon/c;


# direct methods
.method constructor <init>(Lauthcommon/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/o;->b:Lauthcommon/c;

    iput-object p2, p0, Lauthcommon/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lauthcommon/o;->b:Lauthcommon/c;

    invoke-static {v1, v0, v3}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x19258

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lauthcommon/o;->b:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/o;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->cleanInfoByUser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lauthcommon/o;->b:Lauthcommon/c;

    const v1, 0x18e70

    invoke-static {v0, v1, v3}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto :goto_0
.end method
