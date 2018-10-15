.class public final Lro;
.super Ljava/lang/Object;
.source "LmsConfig.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/lms/LmsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lro;->a:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/iflytek/framework/lms/LmsCallInfo;
    .locals 2
    .param p0, "lmsAction"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    sget-object v1, Lro;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lro;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v0, Lro;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/lms/LmsCallInfo;

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/framework/lms/LmsCallInfo;)V
    .locals 2
    .param p0, "callInfo"    # Lcom/iflytek/framework/lms/LmsCallInfo;

    .prologue
    .line 21
    sget-object v0, Lro;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/iflytek/framework/lms/LmsCallInfo;->getLmsAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lro;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/iflytek/framework/lms/LmsCallInfo;->getLmsAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    return-void
.end method
