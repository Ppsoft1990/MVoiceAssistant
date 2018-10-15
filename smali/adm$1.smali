.class Ladm$1;
.super Ljava/lang/Object;
.source "SpecificVoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladm;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ladm;


# direct methods
.method constructor <init>(Ladm;I)V
    .locals 0
    .param p1, "this$0"    # Ladm;

    .prologue
    .line 89
    iput-object p1, p0, Ladm$1;->b:Ladm;

    iput p2, p0, Ladm$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Ladm$1;->b:Ladm;

    invoke-static {v0}, Ladm;->a(Ladm;)Ladj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Ladm$1;->b:Ladm;

    invoke-static {v0}, Ladm;->a(Ladm;)Ladj;

    move-result-object v0

    iget v1, p0, Ladm$1;->a:I

    invoke-interface {v0, v1}, Ladj;->e(I)V

    .line 95
    :cond_0
    return-void
.end method
