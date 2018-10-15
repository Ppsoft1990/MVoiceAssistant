.class final Lauthcommon/d;
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

    iput-object p1, p0, Lauthcommon/d;->b:Lauthcommon/c;

    iput-object p2, p0, Lauthcommon/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x19258

    if-ne v1, v0, :cond_3

    const-string/jumbo v0, "epackage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "esign"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/d;->b:Lauthcommon/c;

    invoke-static {v2, v0, v1}, Lauthcommon/c;->a(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lauthcommon/d;->b:Lauthcommon/c;

    invoke-static {v2}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lauthcommon/d;->a:Ljava/lang/String;

    const-string/jumbo v4, "sourceid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "issipapp"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v7}, Lcom/cmcc/migusso/ssoutil/SpUtils;->get4Sp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appinfo save, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cmcc/migusso/ssoutil/SpUtils;->save2Sp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lauthcommon/d;->b:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sdkVersion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/d;->b:Lauthcommon/c;

    invoke-static {v1}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Lauthcommon/bs;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SSO online sign check success, sdkVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "++++++++App Sign Check NEW VERSION starting next process"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/d;->b:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "commandid"

    iget-object v2, p0, Lauthcommon/d;->b:Lauthcommon/c;

    invoke-static {v2}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "nextcommandid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lauthcommon/d;->b:Lauthcommon/c;

    iget-object v1, p0, Lauthcommon/d;->b:Lauthcommon/c;

    invoke-static {v1}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/d;->b:Lauthcommon/c;

    invoke-static {v2}, Lauthcommon/c;->c(Lauthcommon/c;)Lcom/cmcc/migusso/service/IPCCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lauthcommon/c;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "++++++++App Sign Check OLD VERSION starting callback"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/d;->b:Lauthcommon/c;

    const v1, 0x18e70

    invoke-static {v0, v1, v7}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lauthcommon/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " epackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " esign:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/d;->b:Lauthcommon/c;

    const v1, 0x18f3a

    invoke-static {v0, v1, v7}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lauthcommon/d;->b:Lauthcommon/c;

    const-string/jumbo v2, "resultInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto :goto_0
.end method
