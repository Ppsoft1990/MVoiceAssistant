.class Lahx$2;
.super Ljava/lang/Object;
.source "MicGuidelHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahx;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic b:Lahx;


# direct methods
.method constructor <init>(Lahx;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lahx;

    .prologue
    .line 140
    iput-object p1, p0, Lahx$2;->b:Lahx;

    iput-object p2, p0, Lahx$2;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    const-string/jumbo v0, "MicPluginInstallHandler"

    const-string/jumbo v1, "\u540c\u610f\u5b89\u88c5-->\u8bf7\u6c42\u5b58\u50a8\u5361\u6743\u9650"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lahx$2;->b:Lahx;

    invoke-static {v0}, Lahx;->a(Lahx;)V

    .line 146
    iget-object v0, p0, Lahx$2;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 147
    return-void
.end method
