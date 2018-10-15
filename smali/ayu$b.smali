.class Layu$b;
.super Ljava/lang/Object;
.source "TextTranslateResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Layu;

.field private b:I


# direct methods
.method public constructor <init>(Layu;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 175
    iput-object p1, p0, Layu$b;->a:Layu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p2, p0, Layu$b;->b:I

    .line 177
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Layu$b;->a:Layu;

    invoke-static {v0}, Layu;->b(Layu;)Layu$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Layu$b;->a:Layu;

    invoke-static {v0}, Layu;->b(Layu;)Layu$c;

    move-result-object v0

    iget v1, p0, Layu$b;->b:I

    invoke-interface {v0, v1}, Layu$c;->c(I)V

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
