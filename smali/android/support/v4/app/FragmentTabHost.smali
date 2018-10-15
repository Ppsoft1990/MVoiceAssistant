.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTabHost$1;,
        Landroid/support/v4/app/FragmentTabHost$SavedState;,
        Landroid/support/v4/app/FragmentTabHost$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentTabHost$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lh;

.field private d:I

.field private e:Landroid/widget/TabHost$OnTabChangeListener;

.field private f:Landroid/support/v4/app/FragmentTabHost$a;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 131
    invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method private a(Ljava/lang/String;Lj;)Lj;
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Lj;

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "newTab":Landroid/support/v4/app/FragmentTabHost$a;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 324
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTabHost$a;

    .line 325
    .local v2, "tab":Landroid/support/v4/app/FragmentTabHost$a;
    invoke-static {v2}, Landroid/support/v4/app/FragmentTabHost$a;->b(Landroid/support/v4/app/FragmentTabHost$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    move-object v1, v2

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "tab":Landroid/support/v4/app/FragmentTabHost$a;
    :cond_1
    if-nez v1, :cond_2

    .line 330
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No tab known for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/FragmentTabHost$a;

    if-eq v3, v1, :cond_6

    .line 333
    if-nez p2, :cond_3

    .line 334
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->c:Lh;

    invoke-virtual {v3}, Lh;->a()Lj;

    move-result-object p2

    .line 336
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/FragmentTabHost$a;

    if-eqz v3, :cond_4

    .line 337
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/FragmentTabHost$a;

    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 338
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/FragmentTabHost$a;

    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Lj;->b(Landroid/support/v4/app/Fragment;)Lj;

    .line 341
    :cond_4
    if-eqz v1, :cond_5

    .line 342
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_7

    .line 343
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$a;->c(Landroid/support/v4/app/FragmentTabHost$a;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$a;->d(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 345
    iget v3, p0, Landroid/support/v4/app/FragmentTabHost;->d:I

    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$a;->b(Landroid/support/v4/app/FragmentTabHost$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Lj;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lj;

    .line 351
    :cond_5
    :goto_1
    iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/FragmentTabHost$a;

    .line 353
    :cond_6
    return-object p2

    .line 347
    :cond_7
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Lj;->c(Landroid/support/v4/app/Fragment;)Lj;

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 140
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100f3

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:I

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 250
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 252
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 257
    .local v1, "ft":Lj;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 258
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentTabHost$a;

    .line 259
    .local v3, "tab":Landroid/support/v4/app/FragmentTabHost$a;
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->c:Lh;

    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$a;->b(Landroid/support/v4/app/FragmentTabHost$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lh;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 260
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_0

    .line 261
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$a;->b(Landroid/support/v4/app/FragmentTabHost$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    iput-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/FragmentTabHost$a;

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_1
    if-nez v1, :cond_2

    .line 270
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->c:Lh;

    invoke-virtual {v4}, Lh;->a()Lj;

    move-result-object v1

    .line 272
    :cond_2
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$a;->a(Landroid/support/v4/app/FragmentTabHost$a;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Lj;->b(Landroid/support/v4/app/Fragment;)Lj;

    goto :goto_1

    .line 279
    .end local v3    # "tab":Landroid/support/v4/app/FragmentTabHost$a;
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z

    .line 280
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Lj;)Lj;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {v1}, Lj;->a()I

    .line 283
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->c:Lh;

    invoke-virtual {v4}, Lh;->b()Z

    .line 285
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z

    .line 291
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 303
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    .line 304
    .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 305
    iget-object v1, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 295
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 296
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 297
    .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    .line 298
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Lj;)Lj;

    move-result-object v0

    .line 312
    .local v0, "ft":Lj;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lj;->a()I

    .line 316
    .end local v0    # "ft":Lj;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 319
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    .prologue
    .line 223
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    .line 224
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
