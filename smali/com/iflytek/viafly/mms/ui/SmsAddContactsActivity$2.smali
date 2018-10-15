.class Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;
.super Ljava/lang/Object;
.source "SmsAddContactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 502
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "text":Ljava/lang/String;
    const-string/jumbo v1, "SmsAddContactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "------------>>> afterTextChanged() s = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->isSearchMode:Z

    .line 506
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .line 507
    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$900(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/content/Context;

    move-result-object v2

    .line 506
    invoke-static {v2}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v2

    .line 507
    invoke-virtual {v2, v0}, Lhe;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mFuzzySearchContactItems:Ljava/util/ArrayList;

    .line 508
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v2, v2, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mFuzzySearchContactItems:Ljava/util/ArrayList;

    invoke-static {v2}, Labd;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mFuzzySearchContactItems:Ljava/util/ArrayList;

    .line 509
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mFuzzySearchContactItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v1, v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mFuzzySearchContactItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v4, v4, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mFuzzySearchContactItems:Ljava/util/ArrayList;

    const v5, 0x7f030076

    invoke-virtual {v2, v3, v4, v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->createFuzzySearchAdapter(Landroid/content/Context;Ljava/util/List;I)Laoy;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 511
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "\u65e0\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "\u65e0\u6b64\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iput-boolean v4, v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->isSearchMode:Z

    .line 520
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 521
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "\u65e0\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 498
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 493
    return-void
.end method
