.class Lui$1;
.super Ljava/lang/Object;
.source "AppInstallController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic c:Lui;


# direct methods
.method constructor <init>(Lui;Lcom/iflytek/viafly/app/install/AppInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lui;

    .prologue
    .line 168
    iput-object p1, p0, Lui$1;->c:Lui;

    iput-object p2, p0, Lui$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    iput-object p3, p0, Lui$1;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x67

    .line 172
    const-string/jumbo v0, "APP_AppInstallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traffic dialog cancel| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lui$1;->c:Lui;

    iget-object v1, p0, Lui$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lui;->a(Ljava/lang/String;I)V

    .line 174
    iget-object v0, p0, Lui$1;->c:Lui;

    iget-object v1, p0, Lui$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 175
    invoke-virtual {v1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->g()I

    move-result v1

    iget-object v2, p0, Lui$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 176
    invoke-virtual {v2}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lui$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 177
    invoke-virtual {v3}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 178
    invoke-virtual {v4}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static/range {v0 .. v5}, Lui;->a(Lui;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    iget-object v0, p0, Lui$1;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 182
    return-void
.end method
