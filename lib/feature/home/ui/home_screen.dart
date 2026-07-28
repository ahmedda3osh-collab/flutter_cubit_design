import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_designe/feature/home/cubit/cubit/home_cubit.dart';
import 'package:simple_designe/feature/home/cubit/cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("User Account"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(24.0),
           
            child: BlocConsumer<HomeCubit, HomeState>(
                          listener: (context, state) {
              if(state.isFollowing){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("1 Follower Added")));
              }
            },
              builder: (context, state) {
                return Container(
                  padding:  EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                       CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                       SizedBox(height: 16),
                       Text(
                        "Ahmed Da3osh",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(height: 4),
                       Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                       SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "${state.followersCount}",
                                style:  TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                               SizedBox(height: 4),
                               Text(
                                "المتابِعين",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                           Column(
                            children: [
                              Text(
                                "45K",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "المشاهدات",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                       SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: state.isFollowing
                                ? Colors.grey[300]
                                : Colors.blueAccent,
                            foregroundColor: state.isFollowing
                                ? Colors.black87
                                : Colors.white,
                            elevation: state.isFollowing ? 0 : 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            context.read<HomeCubit>().toggleFollow();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                state.isFollowing
                                    ? Icons.check
                                    : Icons.person_add,
                              ),
                               SizedBox(width: 8),
                              Text(
                                state.isFollowing ? "Following" : "Follow",
                                style:  TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      );
    
  }
}
