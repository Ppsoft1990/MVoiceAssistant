.class Laeu$5;
.super Ljava/lang/Object;
.source "ContactCreateItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu;


# direct methods
.method constructor <init>(Laeu;)V
    .locals 0
    .param p1, "this$0"    # Laeu;

    .prologue
    .line 223
    iput-object p1, p0, Laeu$5;->a:Laeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 226
    if-eqz p2, :cond_0

    .line 227
    const-string/jumbo v0, "ContactCreateItemViewDelegate"

    const-string/jumbo v1, "nameText get focus"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Laeu$5;->a:Laeu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laeu;->a(Laeu;I)I

    .line 230
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 231
    return-void
.end method
