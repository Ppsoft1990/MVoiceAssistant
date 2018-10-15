.class Layk$2;
.super Ljava/lang/Object;
.source "TranslateModeViewHeler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layk;->b()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layk;


# direct methods
.method constructor <init>(Layk;)V
    .locals 0
    .param p1, "this$0"    # Layk;

    .prologue
    .line 231
    iput-object p1, p0, Layk$2;->a:Layk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->b(Layk;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->h()Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->d(Layk;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1, p3}, Layk;->b(Layk;I)Lcom/iflytek/viafly/translate/TranslateLanguageType;

    move-result-object v1

    sput-object v1, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 237
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->b(Layk;)Layp;

    move-result-object v1

    invoke-virtual {v1, v3}, Layp;->a(I)V

    .line 240
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-ne v1, v2, :cond_0

    .line 241
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->b(Layk;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 247
    :goto_0
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-eq v1, v2, :cond_1

    .line 249
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->b(Layk;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->i()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "\u4e2d\u6587"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->b(Layk;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->i()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v1, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 256
    :goto_1
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-virtual {v1}, Layk;->e()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "modeLog":Ljava/lang/String;
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-virtual {v1, v0}, Layk;->b(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->b(Layk;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->a()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 260
    return-void

    .line 243
    .end local v0    # "modeLog":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->b(Layk;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Layk$2;->a:Layk;

    invoke-static {v1}, Layk;->b(Layk;)Layp;

    move-result-object v1

    invoke-virtual {v1}, Layp;->i()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method
