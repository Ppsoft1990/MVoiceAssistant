.class Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;
.super Landroid/view/View;
.source "RightAgreeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;->this$0:Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;

    .line 135
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    iput-object p2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method

.method private getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .param p1, "normalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pressDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "disableDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 151
    .local v2, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v0, 0x101009e

    .line 152
    .local v0, "enabled":I
    const v1, 0x101009c

    .line 154
    .local v1, "focused":I
    new-array v3, v6, [I

    sget-object v4, Landroid/view/View;->ENABLED_STATE_SET:[I

    aget v4, v4, v5

    neg-int v4, v4

    aput v4, v3, v5

    invoke-virtual {v2, v3, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 156
    sget-object v3, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 158
    sget-object v3, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 160
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v5

    neg-int v4, v1

    aput v4, v3, v6

    invoke-virtual {v2, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 162
    new-array v3, v6, [I

    sget-object v4, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    aget v4, v4, v5

    neg-int v4, v4

    aput v4, v3, v5

    invoke-virtual {v2, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 165
    sget-object v3, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 167
    return-object v2
.end method


# virtual methods
.method public getStateDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "normal"    # I
    .param p2, "press"    # I

    .prologue
    .line 140
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, "normalDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    .local v1, "pressDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;->getStateListDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    return-object v2
.end method
