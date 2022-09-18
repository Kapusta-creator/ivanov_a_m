#include<iostream>
#include"queuep.h"

int main() {
	QueueP queue, queue2;
	for (int i = 0; i < 10; i++) {
		queue.push(i * (i % 16) * (i % 50));
	}
	queue2 = queue;
	while (!queue.isEmpty()) {
		std::cout << queue.top() << " ";
		queue.pop();
	}
	std::cout << "\n";
	while (!queue2.isEmpty()) {
		std::cout << queue2.top() << " ";
		queue2.pop();
	}
}