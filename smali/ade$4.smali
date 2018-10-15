.class Lade$4;
.super Ljava/lang/Object;
.source "WidgetSmsInputView.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lade;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lade;


# direct methods
.method constructor <init>(Lade;)V
    .locals 0
    .param p1, "this$0"    # Lade;

    .prologue
    .line 791
    iput-object p1, p0, Lade$4;->a:Lade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Ljava/lang/Object;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 797
    iget-object v1, p0, Lade$4;->a:Lade;

    invoke-static {v1}, Lade;->k(Lade;)Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 798
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    const-string/jumbo v2, "smsView.removeImeIcon()"

    .line 800
    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 802
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_IME_SET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 803
    return-void
.end method
