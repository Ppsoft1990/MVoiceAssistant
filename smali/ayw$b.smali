.class Layw$b;
.super Ljava/lang/Object;
.source "TranslateResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Layw;

.field private b:I


# direct methods
.method public constructor <init>(Layw;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 214
    iput-object p1, p0, Layw$b;->a:Layw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p2, p0, Layw$b;->b:I

    .line 216
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Layw$b;->a:Layw;

    invoke-static {v0}, Layw;->b(Layw;)Layw$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Layw$b;->a:Layw;

    invoke-static {v0}, Layw;->b(Layw;)Layw$c;

    move-result-object v0

    iget v1, p0, Layw$b;->b:I

    invoke-interface {v0, v1}, Layw$c;->g(I)V

    .line 226
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
