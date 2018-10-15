.class Lafx$10;
.super Ljava/lang/Object;
.source "SmsInputItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafx;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafx;


# direct methods
.method constructor <init>(Lafx;)V
    .locals 0
    .param p1, "this$0"    # Lafx;

    .prologue
    .line 254
    iput-object p1, p0, Lafx$10;->a:Lafx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v0, p0, Lafx$10;->a:Lafx;

    invoke-static {v0}, Lafx;->c(Lafx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lafx$10;->a:Lafx;

    const-string/jumbo v1, "selectContact"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lafx;->a(Lafx;Ljava/lang/String;[Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method
