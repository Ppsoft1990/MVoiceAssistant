.class Lael$3;
.super Ljava/lang/Object;
.source "CallMessageItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lael;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lael;


# direct methods
.method constructor <init>(Lael;)V
    .locals 0
    .param p1, "this$0"    # Lael;

    .prologue
    .line 149
    iput-object p1, p0, Lael$3;->a:Lael;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lael$3;->a:Lael;

    invoke-static {v0}, Lael;->a(Lael;)V

    .line 153
    iget-object v0, p0, Lael$3;->a:Lael;

    invoke-static {v0}, Lael;->b(Lael;)Lacz;

    move-result-object v0

    const-string/jumbo v1, "cancelCall"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lacz;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 154
    return-void
.end method
