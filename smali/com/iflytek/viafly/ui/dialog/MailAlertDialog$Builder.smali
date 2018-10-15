.class public Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
.super Ljava/lang/Object;
.source "MailAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private cancelable:Z

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

.field private inAnimation:Landroid/view/animation/Animation;

.field private message:Ljava/lang/CharSequence;

.field private negativeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private outAnimation:Landroid/view/animation/Animation;

.field private positiveButtonClickListener:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private progressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->cancelable:Z

    .line 156
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->context:Landroid/content/Context;

    .line 157
    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->positiveButtonClickListener:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->negativeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    return-object v0
.end method

.method private setNegativeButton(Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "negativeButton"    # Landroid/widget/Button;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 314
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$2;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$2;-><init>(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPositiveButton(Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "positiveButton"    # Landroid/widget/Button;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;-><init>(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public create()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 226
    new-instance v2, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v2, v10}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;-><init>(Landroid/content/Context;)V

    .line 228
    .local v2, "dialog":Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v4, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 231
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 232
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0300bf

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    .line 236
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    const v11, 0x7f0b0380

    .line 237
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 238
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    .line 239
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_0
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->message:Ljava/lang/CharSequence;

    if-eqz v10, :cond_2

    .line 243
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    const v11, 0x7f0b0383

    .line 244
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 245
    .local v6, "messageTextView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .end local v6    # "messageTextView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    const v11, 0x7f0b0384

    .line 254
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "buttonPanel":Landroid/view/View;
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    const v11, 0x7f0b0385

    .line 257
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 258
    .local v8, "positiveButton":Landroid/widget/Button;
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    const v11, 0x7f0b0387

    .line 259
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 260
    .local v7, "negativeButton":Landroid/widget/Button;
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    const v11, 0x7f0b04dc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/iflytek/base/skin/customView/XProgressBar;

    iput-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->progressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    .line 261
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->progressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    iget-object v11, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0203bc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/iflytek/base/skin/customView/XProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    if-nez v10, :cond_3

    .line 265
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    const v11, 0x7f0b04db

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 266
    .local v9, "textPanel":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const-string/jumbo v10, "image.mainpage_list_single"

    sget-object v11, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v9, v10, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 267
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->progressBar:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-virtual {v10, v13}, Lcom/iflytek/base/skin/customView/XProgressBar;->setVisibility(I)V

    .line 275
    .end local v9    # "textPanel":Lcom/iflytek/base/skin/customView/XLinearLayout;
    :goto_1
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    invoke-virtual {v2, v10, v4}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->cancelable:Z

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setCancelable(Z)V

    .line 279
    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .line 281
    return-object v2

    .line 246
    .end local v0    # "buttonPanel":Landroid/view/View;
    .end local v7    # "negativeButton":Landroid/widget/Button;
    .end local v8    # "positiveButton":Landroid/widget/Button;
    :cond_2
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v10, :cond_1

    .line 247
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->rootView:Landroid/view/View;

    const v11, 0x7f0b0382

    .line 248
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 249
    .local v1, "contentLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 250
    iget-object v10, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->contentView:Landroid/view/View;

    invoke-virtual {v1, v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 270
    .end local v1    # "contentLayout":Landroid/widget/LinearLayout;
    .restart local v0    # "buttonPanel":Landroid/view/View;
    .restart local v7    # "negativeButton":Landroid/widget/Button;
    .restart local v8    # "positiveButton":Landroid/widget/Button;
    :cond_3
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-direct {p0, v8, v2}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setPositiveButton(Landroid/widget/Button;Landroid/app/Dialog;)V

    .line 272
    invoke-direct {p0, v7, v2}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setNegativeButton(Landroid/widget/Button;Landroid/app/Dialog;)V

    goto :goto_1
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->cancelable:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->background:Landroid/graphics/drawable/Drawable;

    .line 184
    return-object p0
.end method

.method public setCancelable(Z)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->cancelable:Z

    .line 165
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->contentView:Landroid/view/View;

    .line 179
    return-object p0
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->inAnimation:Landroid/view/animation/Animation;

    .line 214
    return-object p0
.end method

.method public setMessage(I)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 170
    return-object p0
.end method

.method public setNegativeButton(ILcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->context:Landroid/content/Context;

    .line 209
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-virtual {p0, v0, p2}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 202
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->negativeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    .line 203
    return-object p0
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->outAnimation:Landroid/view/animation/Animation;

    .line 219
    return-object p0
.end method

.method public setPositiveButton(ILcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->context:Landroid/content/Context;

    .line 196
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-virtual {p0, v0, p2}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    .line 189
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->positiveButtonClickListener:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    .line 190
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->show()V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 363
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 371
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 372
    const/16 p1, 0x33

    .line 374
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 375
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 376
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 378
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->show()V

    .line 380
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 349
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 351
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 353
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 355
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 356
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 357
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 359
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    return-object v5
.end method
