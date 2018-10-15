.class public Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;
.super Ljava/lang/Object;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelable:Z

.field private context:Landroid/content/Context;

.field private dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

.field private inAnimation:Landroid/view/animation/Animation;

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private messages:[Ljava/lang/CharSequence;

.field private outAnimation:Landroid/view/animation/Animation;

.field private rootView:Landroid/view/View;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->cancelable:Z

    .line 150
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->context:Landroid/content/Context;

    .line 151
    return-void
.end method


# virtual methods
.method public create()Lcom/iflytek/viafly/ui/dialog/ListDialog;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 191
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/ListDialog;

    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/iflytek/viafly/ui/dialog/ListDialog;-><init>(Landroid/content/Context;)V

    .line 193
    .local v1, "dialog":Lcom/iflytek/viafly/ui/dialog/ListDialog;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 196
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 197
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0300b8

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->rootView:Landroid/view/View;

    .line 199
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->rootView:Landroid/view/View;

    const v7, 0x7f0b04c2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XTextView;

    .line 200
    .local v5, "titleView":Lcom/iflytek/base/skin/customView/XTextView;
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->rootView:Landroid/view/View;

    const v7, 0x7f0b04c3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 204
    .local v4, "listContent":Landroid/widget/ListView;
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->messages:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 206
    new-instance v6, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;

    iget-object v7, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->messages:[Ljava/lang/CharSequence;

    invoke-direct {v6, v7, v8}, Lcom/iflytek/viafly/ui/dialog/ListDialog$MyListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->rootView:Landroid/view/View;

    const v7, 0x7f0b04c4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    .line 210
    .local v0, "cancleBtn":Lcom/iflytek/base/skin/customView/XButton;
    new-instance v6, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder$1;

    invoke-direct {v6, p0, v1}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder$1;-><init>(Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;Lcom/iflytek/viafly/ui/dialog/ListDialog;)V

    invoke-virtual {v0, v6}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->rootView:Landroid/view/View;

    invoke-virtual {v1, v6, v3}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-boolean v6, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->cancelable:Z

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->setCancelable(Z)V

    .line 220
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    .line 222
    return-object v1
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->cancelable:Z

    return v0
.end method

.method public setCancelable(Z)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->cancelable:Z

    .line 159
    return-object p0
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->inAnimation:Landroid/view/animation/Animation;

    .line 179
    return-object p0
.end method

.method public setMessage([Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;
    .locals 0
    .param p1, "messages"    # [Ljava/lang/CharSequence;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->messages:[Ljava/lang/CharSequence;

    .line 164
    return-object p0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 174
    return-object p0
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->outAnimation:Landroid/view/animation/Animation;

    .line 184
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->title:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/ListDialog;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/ListDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->show()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/ListDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/ListDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 267
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 268
    const/16 p1, 0x33

    .line 270
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 271
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 272
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 274
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->show()V

    .line 276
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/ListDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/ListDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/ListDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 245
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 247
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 249
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 251
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 252
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 253
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 255
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ListDialog;

    move-result-object v5

    return-object v5
.end method
