.class Lui$2;
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
    .line 185
    iput-object p1, p0, Lui$2;->c:Lui;

    iput-object p2, p0, Lui$2;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    iput-object p3, p0, Lui$2;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    const-string/jumbo v0, "APP_AppInstallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traf confirm| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui$2;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lui$2;->c:Lui;

    iget-object v1, p0, Lui$2;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-static {v0, v1}, Lui;->a(Lui;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    .line 192
    iget-object v0, p0, Lui$2;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 193
    return-void
.end method
