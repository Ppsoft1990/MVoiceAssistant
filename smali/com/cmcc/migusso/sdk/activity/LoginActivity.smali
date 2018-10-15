.class public Lcom/cmcc/migusso/sdk/activity/LoginActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;,
        Lcom/cmcc/migusso/sdk/activity/LoginActivity$f;,
        Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;,
        Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;,
        Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;,
        Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;
    }
.end annotation


# static fields
.field private static f:J

.field private static g:J


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

.field private C:Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

.field private F:Landroid/widget/ListView;

.field private G:Landroid/widget/PopupWindow;

.field private H:Lo/gs;

.field private I:Lo/gj;

.field private J:Lo/gp;

.field private K:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

.field private L:Landroid/widget/ListView;

.field private M:Landroid/widget/PopupWindow;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Landroid/widget/ImageView;

.field private ab:Landroid/widget/ImageView;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/widget/ImageView;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private h:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private i:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private j:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private o:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private t:Lcom/cmcc/migusso/sdk/common/ICallBack;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;-><init>()V

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->u:Z

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->v:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    iput-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->H:Lo/gs;

    iput-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->I:Lo/gj;

    iput-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J:Lo/gp;

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N:Z

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->P:Z

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->S:Z

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->T:Z

    iput-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->U:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->X:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    return-object v0
.end method

.method static synthetic D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->I:Lo/gj;

    return-object v0
.end method

.method static synthetic E(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gs;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->H:Lo/gs;

    return-object v0
.end method

.method static synthetic F(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic H(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic I(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    return-object v0
.end method

.method public static synthetic K(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static synthetic L(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->T:Z

    return v0
.end method

.method public static synthetic M(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/PasswordEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->o:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    return-object v0
.end method

.method public static synthetic N(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->K:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    return-object v0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g:J

    return-wide p0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->I:Lo/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gs;)Lo/gs;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->H:Lo/gs;

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lo/ge;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.permission.SEND_SMS"

    invoke-direct {p0, p1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "datasms"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lo/ge;

    new-instance v1, Lo/bn;

    invoke-direct {v1, p0, p1}, Lo/bn;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lo/ge;-><init>(Landroid/content/Context;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    invoke-virtual {v0}, Lo/ge;->show()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Landroid/text/Editable;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const/high16 v6, 0x42340000    # 45.0f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-direct {v1, p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    :cond_0
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v4, "sso_color_dbdddf"

    invoke-static {v3, v4}, Lcom/cmcc/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const v3, 0x3eb33333    # 0.35f

    invoke-static {v2, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->am:I

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iget v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->am:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    const-string/jumbo v2, "sso_shape_email_list_bg"

    invoke-static {p0, v2}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v3}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWidth()I

    move-result v3

    invoke-direct {v1, v2, v3, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v9, v2}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->getCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-virtual {v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->getCount()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :goto_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e:Ljava/lang/String;

    new-instance v7, Lo/bs;

    invoke-direct {v7, p0}, Lo/bs;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->queryThirdBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "10"

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v2, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    invoke-virtual {v2, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    const/4 v3, 0x1

    const-string/jumbo v4, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1, v2, v3, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "11"

    move-object v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "json : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "resultCode"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v0, "11"

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    :goto_2
    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    const-string/jumbo v5, "resultString"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v0, v2, v5}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const v0, 0x18e70

    if-eq v2, v0, :cond_7

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput v2, v3, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    sparse-switch v2, :sswitch_data_1

    const-string/jumbo v0, ""

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_0
    const-string/jumbo v0, "bindAccount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4

    :sswitch_1
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4

    :sswitch_2
    const-string/jumbo v0, "11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u5f53\u524d\u767b\u5f55\u65b9\u5f0f\u5b58\u5728\u5b89\u5168\u98ce\u9669\uff0c\u8bf7\u5c1d\u8bd5\u5176\u5b83\u767b\u5f55\u65b9\u5f0f"

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4

    :sswitch_3
    const-string/jumbo v0, "\u81ea\u52a8\u767b\u5f55\u5931\u8d25"

    goto :goto_3

    :sswitch_4
    const-string/jumbo v0, "\u5e10\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    goto :goto_3

    :sswitch_5
    const-string/jumbo v0, "\u7b2c\u4e09\u65b9\u767b\u5f55\u6388\u6743\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    goto :goto_3

    :cond_6
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "token\u4e3a\u7a7a"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->W:Ljava/lang/String;

    const-string/jumbo v1, "username"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->V:Ljava/lang/String;

    const-string/jumbo v1, "implicit"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->U:Ljava/lang/String;

    new-instance v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;->start()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x19453 -> :sswitch_1
        0x19458 -> :sswitch_2
        0x19459 -> :sswitch_2
        0x1945b -> :sswitch_1
        0x1945c -> :sswitch_1
        0x194b2 -> :sswitch_0
        0x194b7 -> :sswitch_1
        0x195dd -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x18f39 -> :sswitch_3
        0x192bf -> :sswitch_4
        0x192c1 -> :sswitch_4
        0x192c2 -> :sswitch_4
        0x193f7 -> :sswitch_5
    .end sparse-switch
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    invoke-static {p1, p2}, Lc;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "check permission "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " not granted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-array v3, v2, [Ljava/lang/String;

    aput-object p2, v3, v1

    invoke-static {v0, v3, v2}, Lc;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "check permission "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " granted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->u:Z

    return p1
.end method

.method static synthetic b(J)J
    .locals 0

    sput-wide p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f:J

    return-wide p0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h()Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->O:Z

    return p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->C:Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;

    return-object v0
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->X:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->v:Z

    return p1
.end method

.method static synthetic d()J
    .locals 2

    sget-wide v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic e()J
    .locals 2

    sget-wide v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f:J

    return-wide v0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "icon_qq"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "icon_weibo"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "icon_wechat"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "icon_zhifubao"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private e(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    const-string/jumbo v0, "\u767b\u5f55\u4e2d"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c:Lo/go;

    new-instance v1, Lo/bm;

    invoke-direct {v1, p0}, Lo/bm;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-string/jumbo v0, "10"

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;

    const-string/jumbo v4, ""

    invoke-direct {v5, p0, v4}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    return v0
.end method

.method public static synthetic f(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/common/ICallBack;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->t:Lcom/cmcc/migusso/sdk/common/ICallBack;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wechat install ? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cmcc/util/CommonUtils;->isWechatInstalled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cmcc/util/CommonUtils;->isWechatInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, " \u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/cmcc/util/CommonUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    const-string/jumbo v0, "ALIPAY"

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Y:Ljava/lang/String;

    const-string/jumbo v0, "16"

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    invoke-static {}, Lo/fs;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u4e2d"

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    new-instance v1, Lo/br;

    invoke-direct {v1, p0, v0}, Lo/br;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(I)Lo/fw;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lo/fw;->b:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-boolean v1, v1, Lo/fv;->t:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->u:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v3

    iget-object v3, v3, Lo/fv;->v:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v1, 0x4

    if-ne v1, p1, :cond_8

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->q:Ljava/util/HashMap;

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_5
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Y:Ljava/lang/String;

    const-string/jumbo v3, "WECHAT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_6
    const-string/jumbo v1, "\u767b\u5f55\u4e2d"

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Y:Ljava/lang/String;

    const-string/jumbo v3, "WECHAT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Z)V

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v5}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    :cond_7
    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    new-instance v1, Lo/bq;

    invoke-direct {v1, p0, p1}, Lo/bq;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;I)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    const-string/jumbo v1, "QQ"

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Y:Ljava/lang/String;

    const-string/jumbo v1, "13"

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    const-string/jumbo v1, "WEIBO"

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Y:Ljava/lang/String;

    const-string/jumbo v1, "15"

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    const-string/jumbo v1, "WECHAT"

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Y:Ljava/lang/String;

    const-string/jumbo v1, "14"

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v1, "LoginActivity"

    const-string/jumbo v3, "touch TAOBAO"

    invoke-static {v1, v3}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    if-ne v6, p1, :cond_9

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->r:Ljava/util/HashMap;

    goto/16 :goto_2

    :cond_9
    if-ne v5, p1, :cond_a

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->s:Ljava/util/HashMap;

    goto/16 :goto_2

    :cond_a
    move-object v1, v2

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0, p1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(I)Lcom/cmcc/migusso/sdk/common/ThirdEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p0}, Lcom/cmcc/migusso/sdk/common/ThirdEventListener;->onCallBack(ILandroid/content/Context;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic g(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N:Z

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 3

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->T:Z

    return v0
.end method

.method public static synthetic i(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic j(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->u:Z

    return v0
.end method

.method public static synthetic k(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->v:Z

    return v0
.end method

.method public static synthetic l(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->O:Z

    return v0
.end method

.method public static synthetic m(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f()V

    return-void
.end method

.method public static synthetic n(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N:Z

    return v0
.end method

.method public static synthetic o(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g()V

    return-void
.end method

.method public static synthetic p(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->K:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    return-object v0
.end method

.method public static synthetic q(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ListView;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic r(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/PopupWindow;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static synthetic s(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->r:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method

.method static synthetic t(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->S:Z

    return v0
.end method

.method static synthetic u(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->W:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic v(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->U:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 4

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/gp;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->W:Ljava/lang/String;

    const-string/jumbo v2, "\u7acb\u5373\u4fee\u6539"

    new-instance v3, Lo/bo;

    invoke-direct {v3, p0}, Lo/bo;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/gp;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->W:Ljava/lang/String;

    const-string/jumbo v2, "\u7acb\u5373\u4fee\u6539"

    new-instance v3, Lo/bp;

    invoke-direct {v3, p0}, Lo/bp;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0
.end method

.method public static synthetic y(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->r:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->C:Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->i:Ljava/util/Map;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mEventIds "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ak:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ai:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aj:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->al:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ak:I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ag:Ljava/lang/String;

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ai:I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ae:Ljava/lang/String;

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aj:I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->af:Ljava/lang/String;

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->al:I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ah:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lo/fv;->a()Lo/fv;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->m:Lcom/cmcc/migusso/sdk/common/ICallBack;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->t:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->c:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->P:Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ak:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ai:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aj:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ak:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ai:I

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ak:I

    goto/16 :goto_1
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "LoginActivity handle AsyncResult "

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "errorString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->insertUser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    const/16 v0, 0x10

    iput v0, v2, Landroid/os/Message;->what:I

    :goto_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->r:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->r:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const/16 v0, 0x14

    iput v0, v2, Landroid/os/Message;->what:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityResult  requestCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resulCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v4, :cond_0

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "BACK FROM SMSLOGINACTIVITY SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v4, :cond_1

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "BACK FROM REGISTERACTIVITY SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "ALREADY_REGISTER_USER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->o:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto :goto_0

    :pswitch_2
    if-ne p2, v4, :cond_2

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "BACK FROM FINDPASSWORDACTIVITY SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x26

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "INPUT_PHONENUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->R:Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "INPUT_PHONENUMBER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "BACK FROM CHANGEPASSWORDACTIVITY."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    goto/16 :goto_0

    :pswitch_4
    if-ne p2, v4, :cond_0

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "BACK FROM SECURITYVERIFYACTIVITY SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->insertUser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    goto/16 :goto_0

    :pswitch_5
    if-ne p2, v4, :cond_4

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "BACK FROM THIRDBINDPHONE SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    if-ne p2, v5, :cond_0

    const-string/jumbo v0, "\u767b\u5f55\u4e2d"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->X:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Y:Ljava/lang/String;

    const-string/jumbo v5, ""

    new-instance v6, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;

    const-string/jumbo v7, "mannal"

    invoke-direct {v6, p0, v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Z:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->t:Lcom/cmcc/migusso/sdk/common/ICallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->t:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-interface {v0}, Lcom/cmcc/migusso/sdk/common/ICallBack;->callback()V

    :cond_0
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_btn"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->o:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u5e10\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u5e10\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget v0, v0, Lo/fv;->f:I

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-direct {v0, v1, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->I:Lo/gj;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->I:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_4

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "\u767b\u5f55\u4e2d"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c:Lo/go;

    new-instance v1, Lo/bz;

    invoke-direct {v1, p0}, Lo/bz;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-string/jumbo v0, "11"

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e:Ljava/lang/String;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->x:Ljava/lang/String;

    new-instance v6, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;

    const-string/jumbo v7, "mannal"

    invoke-direct {v6, p0, v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_autologin_btn"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loginActivity runs on thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string/jumbo v0, "default"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_smslogin_tv"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_8

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v2}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "INPUT_PHONENUMBER"

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v3}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string/jumbo v2, "FROM_DEFAULT_LOGINACTIVITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_forgetpwd_tv"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_a

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v2}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "INPUT_PHONENUMBER"

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v3}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const-string/jumbo v2, "FROM_DEFAULT_LOGINACTIVITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x33

    invoke-virtual {p0, v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_thirdlogin_iv_1"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_b

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ak:I

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_thirdlogin_iv_2"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_c

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ai:I

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f(I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_thirdlogin_iv_3"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_d

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aj:I

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f(I)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_thirdlogin_iv_4"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_e

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->al:I

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f(I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "sso_login_username_imgR"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N:Z

    if-nez v0, :cond_10

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N:Z

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v5, "sso_up"

    invoke-static {v4, v5}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->getUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->T:Z

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto :goto_1

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cmcc sso local mHistoryUserList "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    invoke-direct {v0, p0, v3}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->K:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    new-instance v0, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v5, "sso_color_dbdddf"

    invoke-static {v4, v5}, Lcom/cmcc/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const v4, 0x3eb33333    # 0.35f

    invoke-static {v3, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->K:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iget v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->am:I

    iget v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->am:I

    iget v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->am:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    const-string/jumbo v3, "sso_shape_email_list_bg"

    invoke-static {p0, v3}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->K:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->getCount()I

    move-result v0

    if-gt v0, v8, :cond_12

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v4}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWidth()I

    move-result v4

    invoke-direct {v0, v3, v4, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    :goto_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    new-instance v1, Lo/by;

    invoke-direct {v1, p0}, Lo/by;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v4}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v5, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    goto :goto_2

    :cond_13
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v3, "sso_down"

    invoke-static {v2, v3}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/16 v10, 0x8

    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0, v4}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->requestWindowFeature(I)Z

    const-string/jumbo v0, "sso_activity_login"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->setContentView(I)V

    const-string/jumbo v0, "sso_login_root"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->m:Landroid/view/View;

    const-string/jumbo v0, "sso_login_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "sso_login_logoImgvId"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->k:Landroid/widget/ImageView;

    const-string/jumbo v0, "sso_login_username_layout"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z:Landroid/widget/RelativeLayout;

    const-string/jumbo v0, "sso_login_username_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_login_username_imgR"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->l:Landroid/widget/ImageView;

    const-string/jumbo v0, "sso_login_password_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->o:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    const-string/jumbo v0, "sso_login_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_login_autologin_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_login_smslogin_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->p:Landroid/widget/TextView;

    const-string/jumbo v0, "sso_login_forgetpwd_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "sso_str_register"

    invoke-static {p0, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->o:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-boolean v8, v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->c:Z

    iget-boolean v1, v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->b:Z

    iget-boolean v2, v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->a(ZZ)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "logoStr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",logoStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget v1, v1, Lo/fv;->g:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->k:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const-string/jumbo v0, "sso_login_thirdlogin_iv_1"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    const-string/jumbo v0, "sso_login_thirdlogin_iv_2"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    const-string/jumbo v0, "sso_login_thirdlogin_iv_3"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ac:Landroid/widget/ImageView;

    const-string/jumbo v0, "sso_login_thirdlogin_iv_4"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ad:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ac:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ad:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mOneIconStr: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mTwoIconStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ae:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , mTthreeIconStr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->af:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , mFourIconStr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ah:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v5, v4, :cond_c

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->getUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->u:Z

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->getUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_2
    iput-boolean v8, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->T:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v8}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/util/CommonUtils;->isCmccNet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v10}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget v2, v0, Lo/fv;->f:I

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v5, "str_login_username_edit_hint"

    invoke-static {v1, v5}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v8

    packed-switch v2, :pswitch_data_0

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->P:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/view/TitleBar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->e:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->S:Z

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->am:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/bt;

    invoke-direct {v1, p0}, Lo/bt;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/bu;

    invoke-direct {v1, p0}, Lo/bu;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/bv;

    invoke-direct {v1, p0}, Lo/bv;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/bw;

    invoke-direct {v1, p0}, Lo/bw;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->o:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/bx;

    invoke-direct {v1, p0}, Lo/bx;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/ad;

    invoke-direct {v1, p0}, Lo/ad;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    iput-object v1, v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;->a:Lcom/cmcc/migusso/sdk/view/ClearEditText$a;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_5
    const-string/jumbo v1, "206004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "logo_game"

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "205004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "logo_anime"

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "220006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v0, "logo_music"

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "203005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v0, "logo_video"

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "204001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "logo_read"

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->k:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const/high16 v5, 0x423c0000    # 47.0f

    invoke-static {v3, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ag:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ae:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_d
    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v3, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ag:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ae:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->af:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_e
    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x5

    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ag:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ad:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ah:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->aa:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ae:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v2, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->af:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_f
    iput-boolean v4, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->T:Z

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "str_login_username_edit_hint"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x28

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v8

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "str_login_username_edit_hint_no_username"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x28

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v8

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "str_login_username_edit_hint_only_phoneNum"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v1, v8

    const/4 v0, 0x2

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->H:Lo/gs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->H:Lo/gs;

    invoke-virtual {v0}, Lo/gs;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->H:Lo/gs;

    invoke-virtual {v0}, Lo/gs;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->I:Lo/gj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->I:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->I:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_2
    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->C:Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->C:Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onPause()V

    const-string/jumbo v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPause, isNeedAlerm="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->R:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u5df2\u79bb\u5f00\u767b\u5f55\u754c\u9762"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->R:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "request permission android.permission.SEND_SMS granted"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    const-string/jumbo v0, "datasms"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "request permission android.permission.SEND_SMS not granted"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    const v1, 0x18f40

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B:Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    new-instance v1, Lo/bl;

    invoke-direct {v1, p0}, Lo/bl;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->Q:Z

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->f()V

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g()V

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onStop()V

    return-void
.end method
