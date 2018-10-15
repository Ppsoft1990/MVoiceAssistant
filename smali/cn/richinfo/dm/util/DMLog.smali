.class public Lcn/richinfo/dm/util/DMLog;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "test"

.field public static isDebug:Z

.field public static isHavePermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcn/richinfo/dm/DMSDK;->isWriteLog()Z

    move-result v0

    sput-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/richinfo/dm/util/DMLog;->isHavePermission:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "test"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isHavePermission:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcn/richinfo/dm/util/LogToFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "test"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isHavePermission:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcn/richinfo/dm/util/LogToFile;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "test"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isHavePermission:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcn/richinfo/dm/util/LogToFile;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static init(Z)V
    .locals 0

    sput-boolean p0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "test"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcn/richinfo/dm/util/DMLog;->isHavePermission:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcn/richinfo/dm/util/LogToFile;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
