.class Lasr$2;
.super Ljava/lang/Object;
.source "OneKeyInstallAllPluginManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasr;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic c:Lasr;


# direct methods
.method constructor <init>(Lasr;Ljava/util/List;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lasr;

    .prologue
    .line 123
    iput-object p1, p0, Lasr$2;->c:Lasr;

    iput-object p2, p0, Lasr$2;->a:Ljava/util/List;

    iput-object p3, p0, Lasr$2;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lasr$2;->c:Lasr;

    iget-object v1, p0, Lasr$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lasr;->a(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lasr$2;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 129
    return-void
.end method
