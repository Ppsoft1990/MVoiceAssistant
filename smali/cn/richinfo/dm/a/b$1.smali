.class Lcn/richinfo/dm/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/richinfo/dm/a/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcw$b",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/richinfo/dm/a/b;


# direct methods
.method constructor <init>(Lcn/richinfo/dm/a/b;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcn/richinfo/dm/a/b$1;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    sget-object v0, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u81ea\u6ce8\u518c\u6210\u529f"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    invoke-static {v0}, Lcn/richinfo/dm/a/b;->a(Lcn/richinfo/dm/a/b;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u81ea\u6ce8\u518c\u6210\u529f"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    invoke-static {v0}, Lcn/richinfo/dm/a/b;->a(Lcn/richinfo/dm/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    invoke-static {v1}, Lcn/richinfo/dm/a/b;->b(Lcn/richinfo/dm/a/b;)Lcn/richinfo/dm/bean/RegisiterMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcn/richinfo/dm/bean/RegisiterMsg;->getReportMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/richinfo/dm/util/Md5Utils;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/SPUtils;->saveRegMD5(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    iget-object v1, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    invoke-static {v1}, Lcn/richinfo/dm/a/b;->a(Lcn/richinfo/dm/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/a/b;->a(Lcn/richinfo/dm/a/b;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    invoke-static {v0}, Lcn/richinfo/dm/a/b;->a(Lcn/richinfo/dm/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/richinfo/dm/DMSDK;->stopReportService(Landroid/content/Context;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    invoke-static {v0}, Lcn/richinfo/dm/a/b;->a(Lcn/richinfo/dm/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/richinfo/dm/DMSDK;->stopReportService(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/richinfo/dm/a/b$1;->a:Lcn/richinfo/dm/a/b;

    invoke-static {v1}, Lcn/richinfo/dm/a/b;->a(Lcn/richinfo/dm/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/richinfo/dm/DMSDK;->stopReportService(Landroid/content/Context;)V

    throw v0
.end method
