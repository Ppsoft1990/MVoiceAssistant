.class Layk$3;
.super Ljava/lang/Object;
.source "TranslateModeViewHeler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layk;->c()Landroid/widget/LinearLayout;
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
    .line 275
    iput-object p1, p0, Layk$3;->a:Layk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 279
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Layk$3;->a:Layk;

    invoke-static {v2, p3}, Layk;->c(Layk;I)Lcom/iflytek/viafly/translate/TranslateLanguageType;

    move-result-object v0

    .line 281
    .local v0, "languageType":Lcom/iflytek/viafly/translate/TranslateLanguageType;
    sget-object v2, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-eq v0, v2, :cond_0

    .line 282
    iget-object v2, p0, Layk$3;->a:Layk;

    invoke-static {v2}, Layk;->b(Layk;)Layp;

    move-result-object v2

    invoke-virtual {v2}, Layp;->i()Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Layk$3;->a:Layk;

    invoke-static {v2}, Layk;->e(Layk;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p0, Layk$3;->a:Layk;

    invoke-static {v2, p3}, Layk;->c(Layk;I)Lcom/iflytek/viafly/translate/TranslateLanguageType;

    move-result-object v2

    sput-object v2, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 284
    iget-object v2, p0, Layk$3;->a:Layk;

    invoke-static {v2}, Layk;->b(Layk;)Layp;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Layp;->a(I)V

    .line 290
    :goto_0
    iget-object v2, p0, Layk$3;->a:Layk;

    invoke-virtual {v2}, Layk;->e()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "modeLog":Ljava/lang/String;
    iget-object v2, p0, Layk$3;->a:Layk;

    invoke-virtual {v2, v1}, Layk;->b(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Layk$3;->a:Layk;

    invoke-static {v2}, Layk;->b(Layk;)Layp;

    move-result-object v2

    invoke-virtual {v2}, Layp;->a()Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 295
    return-void

    .line 287
    .end local v1    # "modeLog":Ljava/lang/String;
    :cond_0
    invoke-static {}, Layk;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onItemClick: setTargetLanguageModePoPView \u8bd1\u6587\u8bed\u79cd\u4e24\u6b21\u8bbe\u7f6e\u76f8\u540c"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
