.class public Lcom/iflytek/blc/feedback/FeedbackProxy;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 1

    sget v0, Lcom/iflytek/blc/feedback/FeedbackProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/feedback/FeedbackProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/feedback/FeedbackProxy;->nativeCancel(I)V

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/blc/feedback/FeedbackProxy;->a:I

    :cond_0
    return-void
.end method

.method private static native nativeCancel(I)V
.end method

.method private static native nativeStart(Lcom/iflytek/blc/feedback/FeedbackObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/iflytek/blc/feedback/Attachment;)I
.end method

.method public static start(Lcom/iflytek/blc/feedback/FeedbackObserver;Lcom/iflytek/blc/feedback/FeedbackType;Ljava/lang/String;Ljava/lang/String;[Lcom/iflytek/blc/feedback/Attachment;)I
    .locals 1

    sget v0, Lcom/iflytek/blc/feedback/FeedbackProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/feedback/FeedbackProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/feedback/FeedbackProxy;->nativeCancel(I)V

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/blc/feedback/FeedbackProxy;->a:I

    :cond_0
    const-string/jumbo v0, "4"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iflytek/blc/feedback/FeedbackType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p0, v0, p2, p3, p4}, Lcom/iflytek/blc/feedback/FeedbackProxy;->nativeStart(Lcom/iflytek/blc/feedback/FeedbackObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/iflytek/blc/feedback/Attachment;)I

    move-result v0

    sput v0, Lcom/iflytek/blc/feedback/FeedbackProxy;->a:I

    return v0
.end method
