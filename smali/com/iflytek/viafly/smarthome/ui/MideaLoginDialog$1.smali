.class Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog$1;
.super Ljava/lang/Object;
.source "MideaLoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->access$000(Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;Landroid/view/View;)V

    .line 66
    return-void
.end method
