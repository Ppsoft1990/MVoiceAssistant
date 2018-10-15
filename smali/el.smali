.class public Lel;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:Lfw;

.field private static c:Landroid/location/Location;

.field private static d:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lel;->a:J

    return-void
.end method

.method public static a(Landroid/location/Location;)V
    .locals 0

    sput-object p0, Lel;->c:Landroid/location/Location;

    return-void
.end method

.method public static a(Lfw;)V
    .locals 0

    sput-object p0, Lel;->b:Lfw;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lel;->d:Ljava/lang/String;

    return-void
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lel;->a:J

    return-wide v0
.end method

.method public static c()Lfw;
    .locals 1

    sget-object v0, Lel;->b:Lfw;

    return-object v0
.end method

.method public static d()Landroid/location/Location;
    .locals 1

    sget-object v0, Lel;->c:Landroid/location/Location;

    return-object v0
.end method
