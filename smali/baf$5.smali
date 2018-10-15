.class Lbaf$5;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaf;


# direct methods
.method constructor <init>(Lbaf;)V
    .locals 0
    .param p1, "this$0"    # Lbaf;

    .prologue
    .line 199
    iput-object p1, p0, Lbaf$5;->a:Lbaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lbaf$5;->a:Lbaf;

    invoke-static {v0}, Lbaf;->d(Lbaf;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->dismiss()V

    .line 204
    return-void
.end method
