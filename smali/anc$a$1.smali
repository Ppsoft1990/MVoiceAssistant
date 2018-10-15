.class Lanc$a$1;
.super Ljava/lang/Object;
.source "BookCloseDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanc$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanc$a;


# direct methods
.method constructor <init>(Lanc$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lanc$a;

    .prologue
    .line 295
    iput-object p1, p0, Lanc$a$1;->b:Lanc$a;

    iput-object p2, p0, Lanc$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lanc$a$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lanc$a$1;->b:Lanc$a;

    invoke-static {v0}, Lanc$a;->a(Lanc$a;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "#FCFCFC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 300
    iget-object v0, p0, Lanc$a$1;->b:Lanc$a;

    invoke-static {v0}, Lanc$a;->a(Lanc$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lanc$a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lanc$a$1;->b:Lanc$a;

    invoke-static {v0}, Lanc$a;->a(Lanc$a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 303
    iget-object v0, p0, Lanc$a$1;->b:Lanc$a;

    invoke-static {v0}, Lanc$a;->a(Lanc$a;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
