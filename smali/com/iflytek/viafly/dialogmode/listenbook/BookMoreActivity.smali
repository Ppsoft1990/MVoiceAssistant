.class public Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "BookMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Lafh;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->finish()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x7f0b0245
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    .line 35
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v3, 0x7f03003f

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->setContentView(I)V

    .line 37
    const v3, 0x7f0b0247

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->b:Landroid/widget/ListView;

    .line 38
    const v3, 0x7f0b0248

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "emptyView":Landroid/view/View;
    const v3, 0x7f0b024d

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->c:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "BOOK_MORE_INFO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->e:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "BOOK_SEARCH_INFO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->f:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<font color=\"#838486\">\u4ee5\u4e0b\u662f\u201c</font><font color=\"#0F1113\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "<font color=\"#838486\">\u201d\u7684\u641c\u7d22\u7ed3\u679c</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "tipText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 48
    .local v1, "tipSpanned":Landroid/text/Spanned;
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .end local v1    # "tipSpanned":Landroid/text/Spanned;
    .end local v2    # "tipText":Ljava/lang/String;
    :goto_0
    new-instance v3, Lafh;

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->e:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lafh;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->d:Lafh;

    .line 53
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->b:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->d:Lafh;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 55
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->b:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 56
    const v3, 0x7f0b0245

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->a:Landroid/widget/ImageView;

    .line 57
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 59
    return-void

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
