.class Lagu$3;
.super Ljava/lang/Object;
.source "UserGuideCustomSpeakerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagu;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lagu;


# direct methods
.method constructor <init>(Lagu;I)V
    .locals 0
    .param p1, "this$0"    # Lagu;

    .prologue
    .line 137
    iput-object p1, p0, Lagu$3;->b:Lagu;

    iput p2, p0, Lagu$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lagu$3;->b:Lagu;

    iget v1, p0, Lagu$3;->a:I

    invoke-static {v0, v1}, Lagu;->a(Lagu;I)I

    .line 141
    iget-object v0, p0, Lagu$3;->b:Lagu;

    invoke-virtual {v0}, Lagu;->notifyDataSetChanged()V

    .line 142
    return-void
.end method
