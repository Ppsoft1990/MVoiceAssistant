.class public final Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;
.super Landroid/widget/BaseAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final synthetic c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "126.com"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "139.com"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "163.com"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "hotmail.com"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "qq.com"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "vip.sina.com"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "sina.com"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "sohu.com"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "gmail.com"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "yahoo.cn"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->d:[Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->b:Z

    :goto_0
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "126.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, "139.com"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "163.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "hotmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "qq.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "vip.sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "sohu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "gmail.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "yahoo.cn"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->b:Z

    iput-boolean v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->b:Z

    iput-object p2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;

    invoke-direct {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;-><init>()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v2, v2, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v3, "sso_listview_mail_item"

    invoke-static {v2, v3}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_login_listviewTv"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_login_listviewImg"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->b:Z

    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;->a:Landroid/widget/TextView;

    new-instance v2, Lo/ca;

    invoke-direct {v2, p0}, Lo/ca;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;->b:Landroid/widget/ImageView;

    new-instance v1, Lo/cb;

    invoke-direct {v1, p0, p1}, Lo/cb;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
