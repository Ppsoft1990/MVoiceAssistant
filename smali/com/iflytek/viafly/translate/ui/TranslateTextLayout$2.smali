.class Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;
.super Ljava/lang/Object;
.source "TranslateTextLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 336
    const-string/jumbo v1, "TranslateTextLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "afterTextChanged s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->d(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->e(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v1, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1, v6}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Z)Z

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->g(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->h(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->e(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->f(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Z)Z

    .line 361
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->i(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$2;->a:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-static {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 327
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 332
    return-void
.end method
