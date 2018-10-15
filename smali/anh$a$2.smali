.class Lanh$a$2;
.super Ljava/lang/Object;
.source "BookListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanh$a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanh$a;


# direct methods
.method constructor <init>(Lanh$a;)V
    .locals 0
    .param p1, "this$0"    # Lanh$a;

    .prologue
    .line 224
    iput-object p1, p0, Lanh$a$2;->a:Lanh$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v2, p0, Lanh$a$2;->a:Lanh$a;

    invoke-static {v2}, Lanh$a;->a(Lanh$a;)Lane;

    move-result-object v2

    invoke-interface {v2}, Lane;->a()I

    move-result v0

    .line 228
    .local v0, "currentMode":I
    invoke-static {v0}, Lamj;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "mode":Ljava/lang/String;
    iget-object v2, p0, Lanh$a$2;->a:Lanh$a;

    invoke-static {v2}, Lanh$a;->b(Lanh$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lanh$a$2;->a:Lanh$a;

    invoke-static {v2}, Lanh$a;->c(Lanh$a;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5df2\u66f4\u6362\u4e3a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 231
    iget-object v2, p0, Lanh$a$2;->a:Lanh$a;

    invoke-static {v2}, Lanh$a;->d(Lanh$a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0}, Lamj;->c(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    return-void
.end method
