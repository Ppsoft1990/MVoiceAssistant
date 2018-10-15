.class Lapl$1;
.super Ljava/lang/Object;
.source "MusicListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lapl;


# direct methods
.method constructor <init>(Lapl;I)V
    .locals 0
    .param p1, "this$0"    # Lapl;

    .prologue
    .line 99
    iput-object p1, p0, Lapl$1;->b:Lapl;

    iput p2, p0, Lapl$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lapl$1;->b:Lapl;

    invoke-static {v0}, Lapl;->a(Lapl;)Lapm$a;

    move-result-object v0

    iget v1, p0, Lapl$1;->a:I

    invoke-interface {v0, v1}, Lapm$a;->a(I)V

    .line 103
    return-void
.end method
