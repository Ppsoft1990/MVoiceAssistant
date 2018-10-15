.class Lui$3;
.super Ljava/lang/Object;
.source "AppInstallController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui;->g(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

.field final synthetic b:Lui;


# direct methods
.method constructor <init>(Lui;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 0
    .param p1, "this$0"    # Lui;

    .prologue
    .line 196
    iput-object p1, p0, Lui$3;->b:Lui;

    iput-object p2, p0, Lui$3;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/16 v5, 0x67

    .line 200
    const-string/jumbo v0, "APP_AppInstallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traffic dialog cancel| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui$3;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lui$3;->b:Lui;

    iget-object v1, p0, Lui$3;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lui;->a(Ljava/lang/String;I)V

    .line 202
    iget-object v0, p0, Lui$3;->b:Lui;

    iget-object v1, p0, Lui$3;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 203
    invoke-virtual {v1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->g()I

    move-result v1

    iget-object v2, p0, Lui$3;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 204
    invoke-virtual {v2}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lui$3;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 205
    invoke-virtual {v3}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui$3;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 206
    invoke-virtual {v4}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static/range {v0 .. v5}, Lui;->a(Lui;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    return-void
.end method
