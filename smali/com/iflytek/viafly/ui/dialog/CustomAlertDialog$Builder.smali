.class public Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private cancelable:Z

.field private closeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

.field private inAnimation:Landroid/view/animation/Animation;

.field private message:Ljava/lang/CharSequence;

.field private needCloseButton:Z

.field private negativeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private neutralButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

.field private neutualButtonText:Ljava/lang/CharSequence;

.field private outAnimation:Landroid/view/animation/Animation;

.field private positiveButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private rootView:Landroid/view/View;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->cancelable:Z

    .line 163
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->needCloseButton:Z

    .line 168
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    .line 169
    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->closeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->positiveButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->neutralButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->negativeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    return-object v0
.end method

.method private setNegativeButton(Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "negativeButton"    # Landroid/widget/Button;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 421
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;-><init>(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNeutralButton(Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "neutralButton"    # Landroid/widget/Button;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->neutualButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->neutualButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 397
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$3;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$3;-><init>(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    :goto_0
    return-void

    .line 409
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
    .line 371
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 374
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$2;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$2;-><init>(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public create()Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
    .locals 15

    .prologue
    .line 271
    new-instance v3, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v3, v13}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 273
    .local v3, "dialog":Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v5, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 276
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 277
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f03007d

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    iput-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    .line 281
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0380

    .line 282
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 283
    .local v6, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_0

    .line 284
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_0
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0388

    .line 289
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 292
    .local v1, "closeButton":Landroid/widget/ImageButton;
    iget-boolean v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->needCloseButton:Z

    if-eqz v13, :cond_2

    .line 293
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 294
    new-instance v13, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;

    invoke-direct {v13, p0, v3}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;-><init>(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;)V

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    :goto_0
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0381

    .line 317
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 318
    .local v12, "titleTextView":Landroid/widget/TextView;
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->title:Ljava/lang/CharSequence;

    if-eqz v13, :cond_3

    .line 319
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_1
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->message:Ljava/lang/CharSequence;

    if-eqz v13, :cond_4

    .line 325
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0383

    .line 326
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 327
    .local v8, "messageTextView":Landroid/widget/TextView;
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .end local v8    # "messageTextView":Landroid/widget/TextView;
    :cond_1
    :goto_2
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0384

    .line 336
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 338
    .local v0, "buttonPanel":Landroid/view/View;
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0385

    .line 339
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 340
    .local v11, "positiveButton":Landroid/widget/Button;
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0386

    .line 341
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 342
    .local v10, "neutualButton":Landroid/widget/Button;
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0387

    .line 343
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 345
    .local v9, "negativeButton":Landroid/widget/Button;
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    if-nez v13, :cond_5

    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->neutualButtonText:Ljava/lang/CharSequence;

    if-nez v13, :cond_5

    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    if-nez v13, :cond_5

    .line 347
    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :goto_3
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v13}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->setinAnimation(Landroid/view/animation/Animation;)V

    .line 357
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v13}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 358
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    invoke-virtual {v3, v13, v5}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-boolean v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->cancelable:Z

    invoke-virtual {v3, v13}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->setCancelable(Z)V

    .line 361
    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    .line 363
    return-object v3

    .line 305
    .end local v0    # "buttonPanel":Landroid/view/View;
    .end local v9    # "negativeButton":Landroid/widget/Button;
    .end local v10    # "neutualButton":Landroid/widget/Button;
    .end local v11    # "positiveButton":Landroid/widget/Button;
    .end local v12    # "titleTextView":Landroid/widget/TextView;
    :cond_2
    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 308
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 309
    .local v7, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, 0x0

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 310
    const/4 v13, 0x0

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 311
    const/4 v13, 0x0

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 312
    const/4 v13, 0x0

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 313
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 321
    .end local v7    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "titleTextView":Landroid/widget/TextView;
    :cond_3
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 328
    :cond_4
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v13, :cond_1

    .line 329
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->rootView:Landroid/view/View;

    const v14, 0x7f0b0382

    .line 330
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 331
    .local v2, "contentLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 332
    iget-object v13, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->contentView:Landroid/view/View;

    invoke-virtual {v2, v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 349
    .end local v2    # "contentLayout":Landroid/widget/LinearLayout;
    .restart local v0    # "buttonPanel":Landroid/view/View;
    .restart local v9    # "negativeButton":Landroid/widget/Button;
    .restart local v10    # "neutualButton":Landroid/widget/Button;
    .restart local v11    # "positiveButton":Landroid/widget/Button;
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-direct {p0, v11, v3}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setPositiveButton(Landroid/widget/Button;Landroid/app/Dialog;)V

    .line 352
    invoke-direct {p0, v10, v3}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setNeutralButton(Landroid/widget/Button;Landroid/app/Dialog;)V

    .line 353
    invoke-direct {p0, v9, v3}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setNegativeButton(Landroid/widget/Button;Landroid/app/Dialog;)V

    goto :goto_3
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->cancelable:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->background:Landroid/graphics/drawable/Drawable;

    .line 205
    return-object p0
.end method

.method public setCancelable(Z)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->cancelable:Z

    .line 177
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->contentView:Landroid/view/View;

    .line 200
    return-object p0
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->inAnimation:Landroid/view/animation/Animation;

    .line 248
    return-object p0
.end method

.method public setMessage(I)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 191
    return-object p0
.end method

.method public setNeedCloseButton(Z)V
    .locals 0
    .param p1, "needCloseButton"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->needCloseButton:Z

    .line 258
    return-void
.end method

.method public setNeedCloseButton(ZLcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)V
    .locals 0
    .param p1, "needCloseButton"    # Z
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->needCloseButton:Z

    .line 262
    if-eqz p1, :cond_0

    .line 263
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->closeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .line 265
    :cond_0
    return-void
.end method

.method public setNegativeButton(ILcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    .line 243
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    invoke-virtual {p0, v0, p2}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 236
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->negativeButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .line 237
    return-object p0
.end method

.method public setNeutralButton(ILcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "neutralButtonText"    # I
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    .line 230
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    invoke-virtual {p0, v0, p2}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setNeutralButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "neutralButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->neutualButtonText:Ljava/lang/CharSequence;

    .line 223
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->neutralButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .line 224
    return-object p0
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->outAnimation:Landroid/view/animation/Animation;

    .line 253
    return-object p0
.end method

.method public setPositiveButton(ILcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    .line 217
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    invoke-virtual {p0, v0, p2}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    .line 210
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->positiveButtonClickListener:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    .line 211
    return-object p0
.end method

.method public setTitle(I)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 182
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->show()V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 470
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 478
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 479
    const/16 p1, 0x33

    .line 481
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 482
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 483
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 485
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->show()V

    .line 488
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 456
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 458
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 460
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 462
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 463
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 464
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 466
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    move-result-object v5

    return-object v5
.end method
