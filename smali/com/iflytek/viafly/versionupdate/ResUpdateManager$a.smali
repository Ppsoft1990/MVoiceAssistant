.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;
.super Landroid/os/AsyncTask;
.source "ResUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 232
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->g(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lns;->a(I)Z

    move-result v0

    .line 243
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    const/4 v1, 0x7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;IIILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 259
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 237
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$a;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->h(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    .line 238
    return-void
.end method
