.class public final Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
.super Ljava/lang/Object;
.source "InteractiveToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/InteractiveToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_TOAST_TIME:I = 0x9c4

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private btnContent:Ljava/lang/String;

.field private duration:I

.field private mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

.field private onClickListener:Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

.field private toastTip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->duration:I

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)Lcom/iflytek/viafly/ui/InteractiveToast;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .prologue
    .line 137
    iget v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->duration:I

    return v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/InteractiveToast;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/InteractiveToast;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Lcom/iflytek/viafly/ui/InteractiveToast;I)V

    return-void
.end method

.method private static show(Lcom/iflytek/viafly/ui/InteractiveToast;I)V
    .locals 6
    .param p0, "toast"    # Lcom/iflytek/viafly/ui/InteractiveToast;
    .param p1, "duration"    # I

    .prologue
    .line 212
    const/16 v2, 0x64

    if-ge p1, v2, :cond_0

    .line 213
    const/16 p1, 0x9c4

    .line 216
    :cond_0
    const/16 v1, 0x64

    .line 217
    .local v1, "sleepTime":I
    div-int/lit8 v0, p1, 0x64

    .line 246
    .local v0, "count":I
    sget-object v2, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$2;-><init>(Lcom/iflytek/viafly/ui/InteractiveToast;)V

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method


# virtual methods
.method public getToast()Lcom/iflytek/viafly/ui/InteractiveToast;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    return-object v0
.end method

.method public setBtnContent(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    .locals 0
    .param p1, "btnContent"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->btnContent:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public setOnClickListener(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    .locals 0
    .param p1, "onClickListener"    # Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->onClickListener:Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    .line 166
    return-object p0
.end method

.method public setToastDuration(I)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 152
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 153
    const/16 p1, 0x9c4

    .line 155
    :cond_0
    iput p1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->duration:I

    .line 156
    return-object p0
.end method

.method public setToastTip(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    .locals 0
    .param p1, "toastTip"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->toastTip:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public show(Landroid/app/Activity;)Lcom/iflytek/viafly/ui/InteractiveToast;
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 170
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/InteractiveToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->toastTip:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->btnContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->onClickListener:Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    invoke-static {p1, v1, v2, v3}, Lcom/iflytek/viafly/ui/InteractiveToast;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast;->setContentView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast;->show()V

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    iget v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->duration:I

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Lcom/iflytek/viafly/ui/InteractiveToast;I)V

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    return-object v0
.end method

.method public show(Landroid/app/Activity;I)Lcom/iflytek/viafly/ui/InteractiveToast;
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "delay"    # I

    .prologue
    .line 186
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/InteractiveToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->toastTip:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->btnContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->onClickListener:Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    invoke-static {p1, v1, v2, v3}, Lcom/iflytek/viafly/ui/InteractiveToast;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast;->setContentView(Landroid/view/View;)V

    .line 188
    sget-object v0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;-><init>(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    return-object v0
.end method

.method public show(Landroid/app/Activity;III)Lcom/iflytek/viafly/ui/InteractiveToast;
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/InteractiveToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->toastTip:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->btnContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->onClickListener:Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;

    invoke-static {p1, v1, v2, v3}, Lcom/iflytek/viafly/ui/InteractiveToast;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast;->setContentView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-virtual {v0, p2, p3, p4}, Lcom/iflytek/viafly/ui/InteractiveToast;->show(III)V

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    iget v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->duration:I

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Lcom/iflytek/viafly/ui/InteractiveToast;I)V

    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->mToast:Lcom/iflytek/viafly/ui/InteractiveToast;

    return-object v0
.end method
