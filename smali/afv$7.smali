.class Lafv$7;
.super Ljava/lang/Object;
.source "LatestSmsItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafv;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lafv;


# direct methods
.method constructor <init>(Lafv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lafv;

    .prologue
    .line 184
    iput-object p1, p0, Lafv$7;->c:Lafv;

    iput-object p2, p0, Lafv$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lafv$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    const-string/jumbo v0, "\u672a\u77e5"

    iget-object v1, p0, Lafv$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lafv$7;->c:Lafv;

    const-string/jumbo v1, "opRecoCall"

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lafv$7;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lafv$7;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lafv;->a(Lafv;Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lafv$7;->c:Lafv;

    const-string/jumbo v1, "opRecoCall"

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lafv$7;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lafv$7;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lafv;->a(Lafv;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
