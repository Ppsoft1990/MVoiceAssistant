.class Laov$4;
.super Ljava/lang/Object;
.source "BaseMmsContentSpeechDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laov;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laov;


# direct methods
.method constructor <init>(Laov;)V
    .locals 0
    .param p1, "this$0"    # Laov;

    .prologue
    .line 229
    iput-object p1, p0, Laov$4;->a:Laov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Laov$4;->a:Laov;

    invoke-virtual {v0}, Laov;->cancel()V

    .line 234
    iget-object v0, p0, Laov$4;->a:Laov;

    invoke-static {v0}, Laov;->d(Laov;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Laov$4;->a:Laov;

    invoke-static {v0}, Laov;->d(Laov;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 237
    :cond_0
    return-void
.end method
