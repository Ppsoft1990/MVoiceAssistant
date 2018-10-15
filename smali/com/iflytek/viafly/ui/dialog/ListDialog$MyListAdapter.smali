.class Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyListAdapter"
.end annotation


# instance fields
.field private contentItems:[Ljava/lang/CharSequence;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messages"    # [Ljava/lang/CharSequence;

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->mContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->contentItems:[Ljava/lang/CharSequence;

    .line 292
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->contentItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "postion"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 315
    .local v0, "item":Lcom/iflytek/base/skin/customView/XTextView;
    if-nez p2, :cond_1

    .line 316
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 317
    const v1, 0x7f0b04c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "item":Lcom/iflytek/base/skin/customView/XTextView;
    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .line 318
    .restart local v0    # "item":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    :goto_0
    const-string/jumbo v1, "ListDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current postion arg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->contentItems:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;->contentItems:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-object p2

    .line 320
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/iflytek/base/skin/customView/XTextView;
    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .restart local v0    # "item":Lcom/iflytek/base/skin/customView/XTextView;
    goto :goto_0
.end method
